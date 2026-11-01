"""A dependency-free Python smoke test for Code IDE Test."""
from __future__ import annotations

import json
import platform
from pathlib import Path


def calculate_statistics(numbers: list[float]) -> dict[str, float]:
    """Return basic statistics for a non-empty list of numbers."""
    if not numbers:
        raise ValueError("numbers must not be empty")
    return {
        "count": len(numbers),
        "minimum": min(numbers),
        "maximum": max(numbers),
        "average": sum(numbers) / len(numbers),
    }


def main() -> None:
    values = [3, 7, 2, 9, 4]
    report = {
        "python_version": platform.python_version(),
        "working_directory": str(Path.cwd()),
        "sample_statistics": calculate_statistics(values),
    }
    print("Python environment check")
    print(json.dumps(report, indent=2))
    assert calculate_statistics([2, 4, 6])["average"] == 4
    print("\n[PASS] Basic statistics test")


if __name__ == "__main__":
    main()
