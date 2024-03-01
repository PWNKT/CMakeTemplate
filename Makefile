ifeq ($(OS),Windows_NT)
SHELL:=C:/Program Files/Git/bin/bash.exe
endif

.phony: prep
prep:
	@mkdir -p build

.phony: cmake
cmake:
	@cmake -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -S . -B build && \
		cp build/compile_commands.json ./

.phony: build
build:
	@cmake --build build

.phony: test
test:
	@cd build && ctest --output-on-failure

.phony: clean
clean:
	@rm -rf build/* && rm ./compile_commands.json

.phony: all
all: prep cmake build test
