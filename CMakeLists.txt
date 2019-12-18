cmake_minimum_required(VERSION 3.13)
project(cmake_android_native)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/dist)

add_executable(helloandroid src/main.cpp)

target_link_libraries(helloandroid
       log)
