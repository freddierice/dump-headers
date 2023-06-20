
DOCKER_URL := freddierice/dump-headers:latest

build: target/dump-headers
	docker build -t $(DOCKER_URL) -f build.Dockerfile .

push:
	docker push $(DOCKER_URL)

target/dump-headers: target
	go build -o target/dump-headers ./cmd/

target:
	@mkdir target

clean: 
	@rm -rf clean

