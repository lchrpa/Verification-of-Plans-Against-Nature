# Verification-of-Plans-Against-Nature
Source code and benchmark data for the paper "On Verifying Linear Execution Strategies in Planning Against Nature" published at ICAPS 2024

# Compiling the code

- Set up a path to fastdownward in `include/paths.h` (fastdownward can be obtained at fast-downward.org)

type `make`

# Running the benchmarks

- Update a path to the PRP planner in the `benchmarks/run-bench.sh`

run `benchmarks/run-bench.sh` (it should be run from the main directory, where the compiled `verifier` binary is)

results can be found at `benchmarks/results/`


# References to Existing Code (on which our code is built)

The compiler to FOND (benchmarks/toFOND/) has been taken from: https://github.com/martinpilat/events-FOND 
The PDDL translator (modified FastDownward one) and the ``SAS representation'' classes have been taken from: https://gitlab.com/ctu-fee-fras/public/server-client-simulator-kr-2021 

