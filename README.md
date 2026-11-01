# Code IDE Test

A practical, dependency-light project for testing what a mobile code editor can actually do.

This repository is designed to be opened and worked on inside **Kodo** (or another IDE). It is not a benchmark leaderboard: each folder is a small, real project that exercises a different part of the development workflow.

## What to try

| Area | Folder | What it tests |
|---|---|---|
| C++20 | `cpp/` | CMake configure/build, compiler standard support, STL, exceptions, program execution |
| Web | `web/` | HTML/CSS/JavaScript editing, browser preview, DOM interaction, responsive layout |
| Python | `python/` | Python editing, running scripts, standard-library unit tests |
| Data | `data/` | JSON syntax highlighting, formatting, and structured data editing |
| Editor workflow | `docs/EDITOR-TASKS.md` | Find/replace, multi-file edits, navigation, AI assistance, Git |

Everything here uses standard tools and avoids third-party package requirements.

## Suggested test order

1. Open the repository in Kodo and browse the folders.
2. Open `web/index.html` in Kodo's preview. Try the counter and theme controls.
3. Run the Python program, then run its unit tests.
4. Configure and build the C++ project with CMake. Run the resulting executable.
5. Work through the editor tasks in `docs/EDITOR-TASKS.md`.
6. Make a small change, inspect the diff, and commit it with Git.

## C++20 build

From the repository root, use a terminal that supports CMake:

```sh
cmake -S cpp -B cpp/build
cmake --build cpp/build
```

Run the executable:

- macOS / Linux: `./cpp/build/ide_test`
- Windows: `cpp\build\Debug\ide_test.exe` (Visual Studio generator) or `cpp\build\ide_test.exe` (single-configuration generator)

The project requests C++20 and enables exception handling for common compiler families. If your editor's compiler environment does not support a feature, record the exact compiler output rather than silently changing the test.

## Python

```sh
python3 python/main.py
python3 -m unittest discover -s python -p "test_*.py" -v
```

On Windows, use `python` instead of `python3` if that is the installed command.

## Notes

- No API keys, credentials, or private data are needed.
- Build output is kept out of version control.
- The projects are intentionally small so failures are easier to isolate.
- A successful test in one environment does not guarantee support in every Kodo runtime or compiler configuration.

Have fun putting your editor through its paces.
