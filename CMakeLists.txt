cmake_minimum_required(VERSION 3.15...3.31)

project(
  Example
  VERSION 0.1
  DESCRIPTION "An example project with CMake"
  LANGUAGES CXX)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  # Settings specific when using this as toplevel cmake file.
  set(CXX_STANDARD 20)
  set(CXX_STANDARD_REQUIRED ON)

  include(CTest)

  # Set warning level for compilers
  if(MSVC)
      add_compile_options(/W3)
  else()
      add_compile_options(-Wall -Wextra)
  endif()

  set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
endif()

# Dependencies
include(FetchContent)

# Sources
add_subdirectory(src)

if (BUILD_TESTING)
  message("Build tests")
  add_subdirectory(tests)
else()
  message("Don't build tests")
endif()