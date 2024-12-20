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
-   Build the node and run it: `make qf-run`
-   Build the node and run it with wasm file from `output`: `make qf-run-wasm`
-   Build the runtime: `make qf-runtime`
-   Build the pallet: `make polkavm-pallet`
-   Linting: `make clippy`
-   Formatting: `make fmt`
-   Run tests: `make qf-test`
-   Check all: `make check`
-   Make chain spec: `make chainspec`
