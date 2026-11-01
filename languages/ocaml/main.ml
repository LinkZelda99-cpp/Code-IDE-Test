let values = [3; 1; 4; 1; 5; 9]
let () =
  print_endline "Hello from OCaml";
  Printf.printf "sum: %d\n" (List.fold_left (+) 0 values)
