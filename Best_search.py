import tvm
from tvm import te, auto_scheduler

# 注册工作负载
# 注册工作负载
@auto_scheduler.register_workload
def sgvm(N, in_features, out_features, lora_rank, num_loras, dtype):
    # 定义输入张量
    x = te.placeholder((N, 1, in_features), name="x", dtype=dtype)
    A = te.placeholder((num_loras, in_features, lora_rank), name="A", dtype=dtype)
    B = te.placeholder((num_loras, lora_rank, out_features), name="B", dtype=dtype)
    I = te.placeholder((N,), name="I", dtype="int32")

    # 定义 reduce axis
    i = te.reduce_axis((0, in_features), name="i")
    k = te.reduce_axis((0, lora_rank), name="k")

    # 首先从 A 和 B 中选择对应的矩阵
    a_selected = te.compute(
        (N, in_features, lora_rank),
        lambda n, i, k: A[I[n], i, k],
        name="a_selected"
    )
    
    b_selected = te.compute(
        (N, lora_rank, out_features),
        lambda n, k, j: B[I[n], k, j],
        name="b_selected"
    )
    
    # 执行第一步矩阵-向量乘法
    tmp = te.compute(
        (N, 1, lora_rank),
        lambda n, zero, k: te.sum(x[n, zero, i] * a_selected[n, i, k], axis=i),
        name="tmp"
    )

    # 执行第二步矩阵-向量乘法
    y = te.compute(
        (N, 1, out_features),
        lambda n, zero, j: te.sum(tmp[n, zero, k] * b_selected[n, k, j], axis=k),
        name="y"
    )

    return [x, A, B, I, y]

# Define the dimensions and data type
N = 1024
in_features = 4096
out_features = 11008
lora_rank = 16
num_loras = 50
dtype = "float16"

# Create a search task
task = auto_scheduler.SearchTask(func=sgvm, args=(N, in_features, out_features, lora_rank, num_loras, dtype), target="cuda")

# Set tuning options
log_file = "sgmv_auto_scheduler.log"
tune_option = auto_scheduler.TuningOptions(
    num_measure_trials=1000,  # Adjust this value as needed
    measure_callbacks=[auto_scheduler.RecordToFile(log_file)],
    verbose=2
)

# Tune the task
task.tune(tune_option)

# Apply the best schedule
sch, args = task.apply_best(log_file)

# Build the function
func = tvm.build(sch, args, target="cuda")

# Export the function as a shared library
func.export_library("sgmv.so")