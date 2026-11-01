type Entry = { label: string; value: number };
const entries: Entry[] = [{ label: "three", value: 3 }, { label: "one", value: 1 }];
const total = entries.reduce((sum, entry) => sum + entry.value, 0);
console.log("Hello from TypeScript", { total });
