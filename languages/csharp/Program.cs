using System;
using System.Linq;

int[] values = [3, 1, 4, 1, 5, 9];
Console.WriteLine($"C# {Environment.Version}");
Console.WriteLine(string.Join(", ", values.Order()));
