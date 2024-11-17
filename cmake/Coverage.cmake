set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage -fno-elide-constructors -fprofile-instr-generate -fcoverage-mapping")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fprofile-arcs -ftest-coverage -fprofile-instr-generate -fcoverage-mapping")
message("Testing coverage!")

function(set_clang_tidy_target target)
    set_property(TARGET ${target} PROPERTY CXX_CLANG_TIDY "clang-tidy")
endfunction()