#!/bin/bash
/opt/qf-solochain/qf-node \
	--port ${QF_PORT} \
	--base-path /opt/qf-solochain/node-data/qf-devnet-node/ \
	--chain qf-devnet \
	--node-key-file /opt/qf-solochain/node-data/qf-devnet-node/chains/qf-devnet/keystore/node-key \
	--rpc-methods safe \
	--rpc-port ${QF_RPC_PORT} \
	--rpc-cors all \
	--telemetry-url 'wss://telemetry.qfnetwork.xyz/submit 0' \
    --bootnodes /ip4/103.113.69.222/tcp/30333/p2p/12D3KooWMWYPNvMSSstMoADACyX7EppjuRWtTeugFcVEQcrrjvoR
