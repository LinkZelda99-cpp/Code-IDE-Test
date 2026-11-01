from dataclasses import dataclass

@dataclass
class Entry:
  label: str
  value: int

entries = [Entry("three", 3), Entry("one", 1), Entry("four", 4)]
print("Hello from Python")
print("sum:", sum(entry.value for entry in entries))
