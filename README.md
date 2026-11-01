# Code IDE Test

A practical, dependency-light project for testing what a mobile code editor can do. The repository is designed to be opened and worked on inside **Kodo** (or another IDE). It focuses on real editing, build, preview, AI-assistance, and Git workflows—not a timed benchmark or leaderboard.

## What's included

| Area | Files | What it tests |
|---|---|---|
| C++20 | `cpp/` | CMake, compiler support for concepts/ranges/`std::span`, exceptions, executable arguments, and a small test executable |
| Web | `web/` | HTML/CSS/JavaScript editing, live preview, DOM events, task creation/completion/filtering/deletion, responsive layout |
| Python | `python/` | Running a script, standard-library JSON output, platform information, functions, and error handling |
| IDE workflow | `tasks/TEST-PLAN.md` | Navigation, search, AI assistance, Git, and recording compatibility issues |

There are no third-party package dependencies or credentials.

## Quick start

1. Open or clone the repository in Kodo.
2. Open `web/index.html` in the browser preview. Add, complete, filter, and delete tasks; then toggle the theme.
3. Run `python/main.py`.
4. Configure and build the C++ project with CMake, then run both executables.
5. Work through `tasks/TEST-PLAN.md` and record what works, what fails, and the exact error messages.

## C++20

From a terminal with CMake available:

```sh
cmake -S cpp -B cpp/build
cmake --build cpp/build
ctest --test-dir cpp/build --output-on-failure
```

Run the main program:

- macOS / Linux: `./cpp/build/ide_test`
- Windows: `cpp\build\Debug\ide_test.exe` (Visual Studio generator) or `cpp\build\ide_test.exe` (single-configuration generator)

Try its arguments:

```sh
./cpp/build/ide_test --help
./cpp/build/ide_test --self-test
```

The CMake project requests C++20 and enables exception handling for Clang/GCC. If the editor's compiler environment rejects a feature, record the exact output rather than silently changing the test.

## Python

```sh
python3 python/main.py
python3 -m unittest discover -s python -p "test_*.py" -v
```

On Windows, use `python` instead of `python3` if needed.

## Testing philosophy

A failed test is useful information. Record the action, exact error, and whether the problem appears to come from the editor, its terminal, its compiler/runtime, or the source code. A successful test in one environment does not guarantee support in every Kodo configuration.

Have fun putting your editor through its paces.
