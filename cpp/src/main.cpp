#include <algorithm>
#include <concepts>
#include <exception>
#include <filesystem>
#include <iostream>
#include <numeric>
#include <ranges>
#include <span>
#include <stdexcept>
#include <string>
#include <vector>

namespace {
template <typename T>
concept Numeric = std::integral<T> || std::floating_point<T>;

template <Numeric T>
T sum(std::span<const T> values) {
  return std::accumulate(values.begin(), values.end(), T{});
}

void print_help(const char* program) {
  std::cout << "Usage: " << program << " [--help|--self-test]\n"
            << "  --help       Show this message\n"
            << "  --self-test  Run a built-in check\n";
}

bool run_self_test() {
  const std::vector<int> values{2, 4, 6, 8};
  const auto result = sum<int>(values);
  std::cout << "Self-test: sum(2, 4, 6, 8) = " << result << '\n';
  return result == 20;
}

void show_features() {
  const std::vector<int> numbers{1, 2, 3, 4, 5, 6};
  const auto even_squares =
      numbers
      | std::views::filter([](int value) { return value % 2 == 0; })
      | std::views::transform([](int value) { return value * value; });

  std::cout << "C++20 feature check\n-------------------\n";
  std::cout << "Filtered and transformed values: ";
  for (const int value : even_squares) std::cout << value << ' ';
  std::cout << "\nSum of original values: " << sum<int>(numbers) << '\n';
  std::cout << "Current directory: "
            << std::filesystem::current_path().string() << '\n';

  try {
    throw std::runtime_error("intentional exception test");
  } catch (const std::exception& error) {
    std::cout << "Exception handling: " << error.what() << '\n';
  }
}
}  // namespace

int main(int argc, char* argv[]) {
  if (argc > 1) {
    const std::string argument = argv[1];
    if (argument == "--help") {
      print_help(argv[0]);
      return 0;
    }
    if (argument == "--self-test") return run_self_test() ? 0 : 1;
    std::cerr << "Unknown argument: " << argument << '\n';
    print_help(argv[0]);
    return 2;
  }
  show_features();
  return 0;
}
