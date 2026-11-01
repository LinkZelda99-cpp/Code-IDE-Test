#include <concepts>
#include <iostream>
#include <numeric>
#include <span>
#include <vector>

namespace {
template <typename T>
concept Numeric = std::integral<T> || std::floating_point<T>;

template <Numeric T>
T total(std::span<const T> values) {
  return std::accumulate(values.begin(), values.end(), T{});
}

struct TestResults {
  int passed = 0;
  int failed = 0;

  void check(bool condition, const char* description) {
    if (condition) {
      ++passed;
      std::cout << "[PASS] " << description << '\n';
    } else {
      ++failed;
      std::cout << "[FAIL] " << description << '\n';
    }
  }
};
}  // namespace

int main() {
  TestResults results;
  const std::vector<int> integers{1, 2, 3, 4};
  const std::vector<double> decimals{0.5, 1.0, 1.5};
  const std::vector<int> empty;

  results.check(total<int>(integers) == 10, "integer span sum");
  results.check(total<double>(decimals) == 3.0, "floating-point span sum");
  results.check(total<int>(empty) == 0, "empty span sum");

  std::cout << "\nResults: " << results.passed << " passed, "
            << results.failed << " failed\n";
  return results.failed == 0 ? 0 : 1;
}
