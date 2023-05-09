cmake_minimum_required(VERSION 3.5)

project(
  projectname
  VERSION 0.1.0
  LANGUAGES C)

file(GLOB PROJECT_SOURCES "src/*.c")
file(GLOB PROJECT_HEADERS "src/*.h")

add_executable(projectname ${PROJECT_SOURCES} ${PROJECT_HEADERS})
