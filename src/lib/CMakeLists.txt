add_library(lib OBJECT
  lib.cpp
  lib.hpp
)


#set(CMAKE_CXX_CLANG_TIDY "clang-tidy")
target_include_directories(lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_features(lib PUBLIC cxx_std_20)