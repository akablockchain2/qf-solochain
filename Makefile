GUEST_RUST_FLAGS="-C relocation-model=pie -C link-arg=--emit-relocs -C link-arg=--unique --remap-path-prefix=$(pwd)= --remap-path-prefix=$HOME=~"

tools: polkatool chain-spec-builder

polkatool:
	cargo install --path vendor/polkavm/tools/polkatool

run:
	cargo run --release --bin qf-node -- --dev --tmp --rpc-cors all
