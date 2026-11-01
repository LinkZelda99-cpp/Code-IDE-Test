program Hello;
var
  values: array[1..6] of integer = (3, 1, 4, 1, 5, 9);
  i, total: integer;
begin
  total := 0;
  for i := 1 to 6 do total := total + values[i];
  writeln('Hello from Pascal');
  writeln('sum: ', total);
end.
