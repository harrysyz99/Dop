# import tvm
# from tvm import te, auto_scheduler

# num_segments = te.var("num_segments")
# M, N, K = te.var("M"), te.var("N"), te.var("K")

# Y = te.placeholder((M, N), name='Y')
# X = te.placeholder((M, K), name='X')
# W = te.placeholder((num_segments, N, K), name='W')
# S = te.placeholder((num_segments+1,), name='S')

# def sgmv_compute(m, n):
#     return te.sum(X[S[m] + i, k] * W[m, n, k] for i in range(S[m+1] - S[m]) for k in range(K))

# Y_out = te.compute((num_segments, N), sgmv_compute, name='Y_out')

# s = te.create_schedule(Y_out.op)
# task = auto_scheduler.SearchTask(func=Y_out, args=(X, W, S), target='cuda')
# tune_option = auto_scheduler.TuningOptions(num_measure_trials=200)
# task.tune(tune_option)

# task.apply_best()

import tvm
from tvm import te, auto_scheduler

num_segments = te.var("num_segments")
M, N, K = te.var("M"), te.var("N"), te.var("K")

Y = te.placeholder((M, N), name='Y')
X = te.placeholder((M, K), name='X')
W = te.placeholder((num_segments, N, K), name='W')
S = te.placeholder((num_segments+1,), name='S')

def sgmv_compute(m, n):
    k = te.reduce_axis((0, K), name='k')
    i = te.reduce_axis((0, S[m+1] - S[m]), name='i')
    return te.sum(X[S[m] + i, k] * W[m, n, k], axis=[i, k])

Y_out = te.compute((num_segments, N), sgmv_compute, name='Y_out')

s = te.create_schedule(Y_out.op)
task = auto_scheduler.SearchTask(func=Y_out, args=(X, W, S), target='cuda')
tune_option = auto_scheduler.TuningOptions(num_measure_trials=200)
task.tune(tune_option)

task.apply_best()


