cmake_minimum_required(VERSION 3.1)

project(cs_ray C)

set(CMAKE_C_COMPILER cc)
set(CMAKE_EXPORT_COMPILE_COMMANDS YES)


set(RAYLIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/deps/raylib-5.0_linux_amd64)

include_directories(${RAYLIB_DIR}/include)
link_directories(${RAYLIB_DIR}/lib)


set(SOURCES_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
add_executable(main ${SOURCES_DIR}/main.c)

target_link_libraries(main raylib)

set_target_properties(main PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin
)