open Core
open Euler_solutions

let run_problem n =
  match List.Assoc.find Solutions.all n ~equal:( = ) with
  | Some run -> Printf.printf "Problem %d: %d\n" n (run ())
  | None -> Printf.printf "Failed to find problem %d" n

let () = run_problem 1

(* type t = type_def [@@deriving sexp]  *)
(* let () = print_s ([%sexp_of: t] val_of_type_t) *)
