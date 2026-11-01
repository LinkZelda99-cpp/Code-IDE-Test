cmake_minimum_required(VERSION 3.20)

project(CodeIDETest
  VERSION 1.0.0
  DESCRIPTION "A practical coding-environment test project"
  LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(ide_test
  src/main.cpp
)
target_compile_features(ide_test PRIVATE cxx_std_20)

add_executable(ide_test_tests
  tests/test_main.cpp
)
target_compile_features(ide_test_tests PRIVATE cxx_std_20)

if(CMAKE_CXX_COMPILER_ID MATCHES "Clang|GNU")
  target_compile_options(ide_test PRIVATE -Wall -Wextra -Wpedantic -fexceptions)
  target_compile_options(ide_test_tests PRIVATE -Wall -Wextra -Wpedantic -fexceptions)
endif()

enable_testing()
add_test(NAME ide_test_unit_tests COMMAND ide_test_tests)
