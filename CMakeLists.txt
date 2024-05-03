cmake_minimum_required(VERSION 3.1)

project(cs_ray C)

set(CMAKE_C_COMPILER cc)
set(CMAKE_EXPORT_COMPILE_COMMANDS YES)

set(RAYLIB_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/raylib-5.0_linux_amd64/include)
set(RAYLIB_LIBRARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/raylib-5.0_linux_amd64/lib)

include_directories(${RAYLIB_INCLUDE_DIR})
link_directories(${RAYLIB_LIBRARY_DIR})

add_executable(main main.c)

target_link_libraries(main raylib)
