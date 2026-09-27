# nvim

# For python

## install lsp python

`uv tool install basedpyright`
`uv tool install ruff`

## install vertual env

```bash
mkdir -p ~/.local/share/nvim
uv venv ~/.local/share/nvim/python-debug
uv pip install --python ~/.local/share/nvim/python-debug debugpy
```

# For C/C++

## install Dependensy

### install lsp

for pygls<2
`uv tool install cmake-language-server --with 'pygls<2'`

for pygls>2
`uv tool uninstall cmake-language-server`

### install package

```bash
sudo apt install \
clangd \
clang-format \
cmake \
ninja-build \
bear \
gcc-arm-none-eabi
```

## Config

### clang-format

use clang formatter
`~/.clang-format`

for example:

```
BasedOnStyle: LLVM
IndentWidth: 4
ColumnLimit: 120
BreakBeforeBraces: Attach
```

then use `:ConformInfo` in nvim command

## Example:

### STM32

project structure

```
stm32_f401_test/
├── CMakeLists.txt
├── .clangd
├── compile_commands.json
├── src/
│   ├── main.c
│   └── gpio.c
│
├── include/
│   └── gpio.h
│
├── drivers/
│   ├── CMSIS/
│   └── STM32_HAL/
│
└── build/
```

#### minimom of CMakeLists.txt

```
cmake_minimum_required(VERSION 3.20)

project(stm32_test C)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(
    firmware
    src/main.c
    src/gpio.c
)
```

then `cmake -B build`
then link output to root project `ln -s build/compile_commands.json .`

#### file `.clangd` for STM32

use minimom config in .clangd

```
CompileFlags:
  Add:
    - -mcpu=cortex-m4
    - -mthumb
    - -DSTM32F401xE
```

### Arduino project

project structure

```
arduino_sensor/

├── src/
│   └── main.cpp
├── arduino_sensor.ino
├── include/
├── libraries/
├── .clangd
└── compile_commands.json
```

for build project
`arduino-cli compile`

### Another project

project structure

```
hello_cpp/

├── CMakeLists.txt
├── build/
├── src/
│   └── main.cpp
└── compile_commands.json
```

#### CMake file

```
cmake_minimum_required(VERSION 3.20)

project(test)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(
    test
    src/main.cpp
)
```
