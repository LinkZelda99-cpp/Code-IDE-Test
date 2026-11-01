# Code IDE Test

A practical, dependency-light project for testing what a mobile code editor can do. It is designed to be opened and explored inside **Kodo** (or another IDE). It tests real editing, syntax highlighting, navigation, build/preview workflows, AI assistance, and Git—not a timed benchmark or leaderboard.

## What's included

| Area | What it tests |
|---|---|
| C++20 | CMake, concepts, ranges, `std::span`, exceptions, executable arguments, unit tests |
| Python | Script execution, standard library, JSON output, functions, error handling, unit tests |
| Web app | HTML/CSS/JavaScript editing, browser preview, DOM events, responsive layout |
| Language gallery | 50+ languages, markup formats, configuration files, shaders, and developer tooling |
| IDE workflow | Navigation, search, AI assistance, Git, and recording compatibility issues |

## Language gallery

The `languages/` directory contains small, readable syntax samples. Open a few from each group and inspect highlighting, indentation, bracket matching, autocomplete, symbol navigation, and formatting where available.

**General-purpose and scripting:** C, C++, C#, Java, Kotlin, Swift, Objective-C, Go, Rust, Python, JavaScript, TypeScript, Ruby, PHP, Perl, Lua, R, Julia, Dart, Scala, Groovy, Haskell, OCaml, F#, Elixir, Erlang, Clojure, Crystal, Nim, Zig, D, and Pascal.

**Systems, embedded, and hardware:** Fortran, COBOL, Ada, x86-64 Assembly, Verilog, and VHDL.

**Web, app, and game development:** HTML, CSS, SCSS, TSX/JSX, Vue, Svelte, GDScript, GML, GLSL, and Solidity.

**Query, schema, markup, and configuration:** SQL, GraphQL, Protocol Buffers, XML, JSON, YAML, TOML, Nix, and Terraform/HCL.

**Developer tooling and docs:** Bash, PowerShell, Dockerfile, Makefile, and Markdown.

These are primarily **editor-language samples**, not a promise that Kodo can compile or execute every language. Runtime/build support depends on the toolchain available in Kodo. The samples are intentionally small so highlighting and editing can be tested without installing dozens of SDKs.

## Quick start

1. Open or clone the repository in Kodo.
2. Start with `languages/`: open files with very different extensions and compare highlighting.
3. Open `web/index.html` in the browser preview. Add, complete, filter, and delete tasks; then toggle the theme.
4. Run `python/main.py`.
5. Configure and build the C++ project with CMake, then run both executables.
6. Work through `tasks/TEST-PLAN.md` and record what works, what fails, and the exact error messages.

There are no third-party package dependencies for the core C++, Python, or web tests.

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

A failed test is useful information. Record the action, exact error, and whether the problem appears to come from the editor, its terminal, its compiler/runtime, or the source code. A language appearing in this repository tests editor handling of that file type; it does not prove the IDE has a compiler, interpreter, formatter, debugger, or language server for it.

Have fun putting your editor through its paces.
