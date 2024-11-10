add_executable(libTests
  libTests.cpp
)

target_link_libraries(libTests
  lib
  gtest
  gtest_main
)

gtest_discover_tests(libTests)