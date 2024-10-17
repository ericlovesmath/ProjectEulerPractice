open Core
open Euler_solutions

let run_problem n =
  match List.Assoc.find Solutions.all n ~equal:( = ) with
  | Some run -> Printf.printf "Problem %d: %d\n" n (run ())
  | None -> Printf.printf "Failed to find problem %d" n

let () =
  let number = ref None in
  Arg.parse
    []
    (fun n -> number := int_of_string_opt n)
    "Usage: dune exec euler -- -n <problem>";
  match !number with
  | None -> print_string "No problem provided"
  | Some n -> run_problem n
