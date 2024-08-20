# DOP: Dynamic Dynamic Operator Optimization
## Overview

Low-Rank Adaptation (LoRA) is increasingly recognized for its efficiency in fine-tuning large language models (LLMs) with minimal resource overhead. Traditional approaches to serving multiple LoRA models often suffer from redundant computations and low GPU utilization. Our work introduces Dynamic Operator Optimization (Dop), a cutting-edge method that dynamically optimizes the Segmented Gather Matrix-Vector Multiplication (SGMV) operator to address these inefficiencies.

Dop significantly enhances computational efficiency by batching GPU operations across different LoRA models, allowing for improved throughput. The core of Dop is its innovative Search Space Constructor, which creates a hierarchical search space. This space divides the optimization process into high-level structural sketches and detailed implementation levels, offering both diversity and flexibility in operator implementation.

An advanced Optimization Engine further refines these implementations through evolutionary search, guided by a performance-estimating cost model. This iterative optimization process enables SGMV implementations to dynamically adapt to varying scenarios, ensuring optimal performance.

We have empirically demonstrated that Dop can enhance throughput by 1.30 to 1.46 times compared to traditional multi-tenant LoRA serving solutions, marking a significant advancement in the field.

## Setup Instructions

### Prerequisites
Ensure you have Python and the necessary packages installed by following these steps:

1. **Install Python**: Make sure Python is installed on your system. You can download it from [python.org](https://www.python.org/downloads/).

2. **Install TVM**: DOP requires TVM for backend optimizations. Follow the installation instructions on the [TVM official documentation](https://tvm.apache.org/docs/install/index.html).

### Installation

Clone the repository and set up the environment:

```bash
git clone https://github.com/your-github-repo/dop.git
cd dop
pip install -r requirements.txt
```

Running the Optimization Script
The `best.py` script is designed to find the best operator configurations:
```bash
python best.py

```
This script generates a TVM log file containing the best tuning information.

### Understanding the Tuning Parameters
The TVM log file records various optimization steps taken during the auto-tuning process. Here’s a breakdown of what each parameter represents:

AN (AnnotationStep): Adds annotations to the loop levels.\
FU (FuseStep): Fuses two consecutive loop levels to enhance data locality and reduce loop overhead.\
PR (PragmaStep): Inserts pragmas in the generated code for additional compiler directives.\
RE (ReorderStep): Reorders loop levels to optimize memory access patterns and parallelism.\
SP (SplitStep): Splits a loop level into two nested levels to fine-tune granularity of computation.\
FSP (FollowSplitStep): Follows a SplitStep, adjusting subsequent operations to maintain logical correctness.\
FFSP (FollowFusedSplitStep): Follows a fusion of splits, adjusting for combined granularity changes.\
SA (StorageAlignStep): Aligns data storage for more efficient memory access.\
CA (ComputeAtStep): Moves computation closer to the memory location where data resides.\
CI (ComputeInlineStep): Inlines computation to eliminate loop overhead where possible.\
CR (ComputeRootStep): Sets the computation to occur at the 'root' level, affecting all subsequent operations.\
CHR (CacheReadStep): Caches data read from memory to improve access speeds.\
CHW (CacheWriteStep): Caches data written to memory to optimize write operations.\
RF (RfactorStep): Factorizes a reduction operation to enable parallelism in reductions.\

### Applying Log File Insights
With the tuning log generated, incorporate the suggested optimizations into your sgmv.cuh file in the src directory to enhance performance.

### Running Benchmarks
To verify the improvements:

```bash
python -m benchmarks.bench_textgen_lora --batch-size 32
```

# Acknowledgements

We would like to express our gratitude to the developers of **Punica** and **TVM** for their pioneering technologies that have significantly influenced the development of our Dynamic Operator Optimization (Dop) system.

## Punica
**Punica** has been instrumental in demonstrating the efficiency of Low-Rank Adaptation (LoRA) for fine-tuning large language models (LLMs). LoRA is notably resource-efficient, adding minimal storage and memory overhead to pretrained LLMs. Punica's approach allows the simultaneous running of multiple LoRA-finetuned models with the overhead of only a single model by leveraging a sophisticated method of matrix operation that manages multiple sets of adaptations (A1, B1, A2, B2, ..., An, Bn) efficiently. This batching effect ensures high computational efficiency and reduced latency across multiple inputs.

## TVM
**TVM** has provided an essential framework for optimizing and accelerating the machine learning workloads that underpin our Dop system. TVM's versatile compiler infrastructure allows us to fine-tune and optimize our models across diverse hardware architectures, contributing significantly to the performance enhancements we achieve in LoRA model serving.

The synergistic technologies of Punica and TVM have enabled us to push the boundaries of what's possible in the optimization of deep learning models. Their tools and frameworks have been crucial in helping us implement the Segmented Gather Matrix-Vector Multiplication (SGMV) optimizations that are central to Dop's performance improvements.
