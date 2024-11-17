# Function enables static analysis per target basis using clang-tidy and cppcheck
function(enable_target_static_analysis target)
  set_target_properties(${target} PROPERTIES CXX_CLANG_TIDY "clang-tidy")
  set_target_properties(${target} PROPERTIES CXX_CPPCHECK "cppcheck")
endfunction()