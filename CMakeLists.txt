cmake_minimum_required(VERSION 3.0)
project(example)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

find_package(pybind11 REQUIRED)

add_executable(example main.cpp)
target_link_libraries(example PRIVATE pybind11::embed)
