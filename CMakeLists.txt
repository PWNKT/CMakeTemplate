cmake_minimum_required(VERSION 3.25)
project(ProjectName)

enable_testing()

add_subdirectory(./third-party/)
add_subdirectory(./core/)
add_subdirectory(./modules/)
add_subdirectory(./tests/)
