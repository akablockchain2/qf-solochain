build_node_image:
	docker build -t qf-node-image:latest -f Dockerfile.qfnode .

build_dev_image: build_node_image
	docker build -t qf-dev:latest -f Dockerfile.dev .

build_arm64:
	docker build -t qf-solochain-arm64:latest -f Dockerfile.arm64 .

build_x86_64:
	docker build -t qf-solochain-x86_64:latest -f Dockerfile.x86_64 .

run_arm64: build_arm64
	docker run --name qf-solochain-arm64 -p 30333:30333 -p 9615:9615 -p 9944:9944 qf-solochain-arm64:latest

run_x86_64: build_x86_64
	docker run --name qf-solochain-x86_64 -p 30333:30333 -p 9615:9615 -p 9944:9944 qf-solochain-x86_64:latest
