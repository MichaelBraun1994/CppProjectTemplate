#include <gtest/gtest.h>
#include "lib.hpp"

// Demonstrate some basic assertions.
TEST(HelloTest, BasicAssertions)
{
  Lib libObj{};
  libObj.PrintHelloWorld();

  // Expect equality.
  EXPECT_EQ(7 * 6, 42);
}