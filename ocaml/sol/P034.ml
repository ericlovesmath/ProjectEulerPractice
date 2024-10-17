open Core

(** Factorial from 0 to 9 *)
let factorial = [| 1; 1; 2; 6; 24; 120; 720; 5040; 40320; 362880 |]

let rec factorial_sum = function
  | 0 -> 0
  | n -> factorial.(n mod 10) + factorial_sum (n / 10)

(* Analysis: d * 9! < 10^d means 8+ digits do not work *)
let run () =
  List.range 3 10_000_000
  |> List.filter ~f:(fun n -> n = factorial_sum n)
  |> List.fold ~init:0 ~f:( + )
