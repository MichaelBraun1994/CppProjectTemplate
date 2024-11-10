# Enable different static analysers and provide a custom target that runs them.

file (GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS
    ${CMAKE_SOURCE_DIR}/src/*.[hc]pp
)

find_program(CLANG_TIDY_EXECUTABLE "clang-tidy")
if(NOT CLANG_TIDY_EXECUTABLE)
  message(FATAL_ERROR "Clang-tidy cannot be found!")
endif()

add_custom_target(clang-tidy ALL
  COMMAND ${CLANG_TIDY_EXECUTABLE} -p ${CMAKE_SOURCE_DIR}/build ${SRC_FILES} --quiet
  COMMENT "Running static analysis using clang-tidy"
)

find_program(CPP_CHECK_EXECUTABLE "cppcheck")
if(NOT CPP_CHECK_EXECUTABLE)
  message(FATAL_ERROR "Cppcheck cannot be found!")
endif()

add_custom_target(cppcheck ALL
  COMMAND ${CPP_CHECK_EXECUTABLE} ${SRC_FILES} --quiet
  COMMENT "Running static analysis using cppcheck"
)