add_library(lib OBJECT
  lib.cpp
  lib.hpp
)

target_include_directories(lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_features(lib PUBLIC cxx_std_20) 

enable_target_static_analysis(lib)