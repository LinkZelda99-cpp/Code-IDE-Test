#!/usr/bin/env bash
set -euo pipefail
values=(3 1 4 1 5 9)
total=0
for value in "${values[@]}"; do (( total += value )); done
printf 'Hello from Bash\nsum: %s\n' "$total"
