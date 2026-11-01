# Hands-on IDE Test Plan

This is a practical checklist, not a timed benchmark. Try the tasks in the IDE itself and note anything that behaves unexpectedly.

## 1. Project and file handling
- [ ] Open or clone the repository.
- [ ] Browse the full folder structure.
- [ ] Open files from at least three different folders.
- [ ] Search the project for `C++20`.
- [ ] Edit a file, close it, and confirm the edit is still present.

## 2. C++ and CMake
- [ ] Open `cpp/CMakeLists.txt` as a CMake project.
- [ ] Configure and build the project.
- [ ] Run the `ide_test` executable.
- [ ] Run it with `--help`.
- [ ] Run it with `--self-test`.
- [ ] Build and run `ide_test_tests`.
- [ ] Confirm the compiler accepts C++20 concepts, ranges, and `std::span`.
- [ ] Confirm whether exception handling is enabled.
- [ ] Introduce a small syntax error, inspect the diagnostic, then undo the error.

Record the compiler/version if visible, accepted C++ standard, CMake status, and any exception-related errors.

## 3. Web editing and preview
- [ ] Open `web/index.html` in the browser preview.
- [ ] Add a task, complete it, filter it, and delete it.
- [ ] Toggle the light theme.
- [ ] Resize the preview to a narrow mobile viewport.
- [ ] Change a CSS value and confirm the preview updates.

Small edit challenge: add a character counter showing the number of tasks.

## 4. Python
- [ ] Run `python/main.py`.
- [ ] Run the unit tests with `python3 -m unittest discover -s python -p "test_*.py" -v`.
- [ ] Confirm the Python version is printed.
- [ ] Change the sample values and rerun.
- [ ] Try an empty list with `calculate_statistics([])` and inspect the error.
- [ ] Ask the IDE's AI to explain the function without rewriting it.



## 5. Language and syntax-highlighting sweep

The `languages/` directory is a syntax-highlighting and editing gallery. It is deliberately not a claim that every language has a working compiler/runtime inside Kodo.

- [ ] Open at least 15 files with different extensions.
- [ ] Check whether each file gets the correct language mode automatically.
- [ ] Check syntax colors for keywords, strings, comments, numbers, and types.
- [ ] Test indentation and auto-closing brackets/quotes.
- [ ] Test code folding and minimap/outline if available.
- [ ] Test autocomplete in several languages.
- [ ] Test find/replace across a multi-file project.
- [ ] Check whether JSX/TSX, Vue, and Svelte are recognized distinctly.
- [ ] Check whether shader files, SQL, YAML, TOML, and Markdown are highlighted correctly.
- [ ] Record extensions that are missing, misidentified, or treated as plain text.

Suggested quick sample set: `languages/c/hello.c`, `languages/rust/main.rs`, `languages/swift/main.swift`, `languages/go/main.go`, `languages/typescript/main.ts`, `languages/web/sample.tsx`, `languages/gdscript/main.gd`, `languages/glsl/shader.frag`, `languages/sql/query.sql`, `languages/data/sample.yaml`, `languages/terraform/main.tf`, and `languages/markdown/sample.md`.

For each file, distinguish **syntax highlighting** from **language services** (autocomplete, diagnostics, formatting, navigation) and from **execution/build support**. These are separate capabilities.

## 6. AI coding assistance

Try these prompts one at a time. Review suggested changes before accepting them.

1. "Explain how the C++20 ranges pipeline works. Do not modify the code."
2. "Find a portability issue in this CMake project. Explain it before changing anything."
3. "Add a median calculation to the C++ program and cover it with a test."
4. "Review the JavaScript for bugs or accessibility problems. Give findings first; don't edit yet."
5. "Refactor the Python statistics function for clarity while preserving behavior."
6. "Add one feature to the web task list, keeping the project dependency-free."

Observe whether the assistant understands multiple files, explains its plan, and avoids unrelated edits.

## 6. Git
- [ ] Inspect Git status.
- [ ] Change one comment in a source file.
- [ ] Inspect the diff.
- [ ] Stage and commit the change.
- [ ] Confirm the commit appears in history.
- [ ] Create a branch and switch back to main.

## 7. Notes
| Test | Result / notes |
|---|---|
| Repository import | |
| File navigation and search | |
| C++20 build | |
| C++ self-test | |
| CMake / CTest | |
| Exception support | |
| Web preview | |
| Python execution | |
| AI multi-file understanding | |
| AI code edits | |
| Git operations | |
| Terminal limitations | |

A failed test is useful information. Record the exact error and step. Distinguish an IDE limitation (such as a restricted terminal) from a source-code bug.
