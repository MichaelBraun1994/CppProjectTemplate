add_executable(libTests
  libTests.cpp
)

target_link_libraries(
  libTests
  lib
  GTest::gtest_main
)

gtest_discover_tests(libTests)