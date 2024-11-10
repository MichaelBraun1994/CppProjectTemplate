#include <gtest/gtest.h>

#include "lib.hpp"

// Demonstrate some basic assertions.
TEST(HelloTest, BasicAssertions)
{
  foo();

  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_EQ(7 * 6, 42);
}