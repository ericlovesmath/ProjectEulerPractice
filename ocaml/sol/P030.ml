open Core
open Utils

(* If there are [d] digits, d * 9^5 <= 10^d - 1.
   As this condition fails at d = 7, we only have to
   brute force check numbers with up to 6 digits *)

(** Get sum of digits of [n], each raised to the 5th power *)
let sum_digits_pow_5 n =
  let rec go n acc =
    if n = 0 then acc else go (n / 10) (acc + pow (n mod 10) 5)
  in
  go n 0

let run () =
  List.range 2 1_000_000
  |> List.filter ~f:(fun x -> x = sum_digits_pow_5 x)
  |> List.fold ~init:0 ~f:( + )

include (val Solution.make run)
