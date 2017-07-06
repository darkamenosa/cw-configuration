REPO_NAME := cw-configuration

.PHONY: test build release clean

test:
	./gradlew test

build:
	./gradlew build

release:
	docker build -t tuyenhx/cw-configuration .

clean:
	echo "Clean up environment"
	docker images -q -f dangling=true -f label=application=$(REPO_NAME) | xargs -I ARGS docker rmi -f ARGS
