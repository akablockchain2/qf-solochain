# Quantum Fusion Solochain

## Getting Started

### Prerequisites

-   Pull vendored PolkaVM repo: `git submodule update --init --recursive`
-   Alternatively, run `make vendor-clone`
-   Install [Rust toolchain targeting RISC-V RV32E](https://github.com/paritytech/rustc-rv32e-toolchain)
-   Install [bun](https://bun.sh) (or npm or yarn) to use [Chopsticks](https://github.com/AcalaNetwork/chopsticks) to run the chain ( Optional for debugging)
-   Install [jq](https://stedolan.github.io/jq/) (For chainspec building)
-   Install polkatool[^1] (for relinking the standard RV32E ELF to a PolkaVM blob) and chain-spec-builder[^2](for building chainspec from a wasm): `make tools`

### Run the node
```bash
make qf-run
```

### Other make commands
-   Build the node: `make qf-node`
-   Build the relese node: `make qf-node-release`
-   Build the node and run it: `make qf-run`
-   Build the node and run it with wasm file from `output`: `make qf-run-wasm`
-   Build the runtime: `make qf-runtime`
-   Build the pallet: `make polkavm-pallet`
-   Linting: `make clippy`
-   Formatting: `make fmt`
-   Run tests: `make qf-test`
-   Check all: `make check`
-   Make chain spec: `make chainspec`
-   Make PolkaVM blob: `make pvm-prog-<progname>` where `<progname>` is the name of the program to be compiled. For example `make pvm-prog-calc`
-   Test the compiled `.polkavm` blob: `make test-pvm-prog-<progname>` where `<progname>` is the name of the compiled program. For example `make test-pvm-prog-calc`

### Compiling PolkaVM programs
To compile a program, run `make pvm-prog-<progname>` where `<progname>` is the name of the program to be compiled. For example, `make pvm-prog-calc`.
The `.polkavm` file will be generated in `output/`.

After that you can use the `make run` to run the node. Then go to UI Polkadot.js and call the extrisinc `qfPolkaVM`. 
Then run functions:
-   `upload(programBlob)` and upload the `.polkavm` blob
-   `execute(a, b, op)` with the two numbers (`a`, `b`) you want to calculate and select the type of operation `op` with 0 - sum, 1 - sub, 2 - mul.

### Testing the compiling polkavm blobs
For testing compiling polkavm binary blobs use the [[qf-test-runner/README|qf-test-runner]]

### Truble shooting
If your compiled `.polkavm` file is not working, try to run `make tools` again that reinstalling the tools with `polkatool` for actual version.

For any compilation errors try to run `make clean` or `rm -rf target` and then try again.
