#include <iostream>
#include "lib.hpp"

void Lib::PrintHelloWorld()
{
  std::cout << "Hello world!\n";
}

void Lib::PrintInput(std::string& input)
{
  std::cout << input << std::endl;
}