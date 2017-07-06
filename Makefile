.PHONY: test build release clean

test:
	./gradlew test

build:
	./gradlew build

release:
	docker build -t cw-configuration .

clean:
	echo "Clean up environment"
