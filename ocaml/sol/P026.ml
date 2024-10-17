open Core
open Utils

(* Idea: 1/n has a d-length cycle when 1/n = ?/9999 where there are `d` 9s
   Therefore, we just need to check for what `d` does n | 10^d - 1.
   If the number is divisible by 2 or 5, it doesn't cycle or is a previous cycle,
   so we can skip those *)

let cycle_len n =
  let rec cycle_len' tens count =
    if (tens - 1) mod n = 0
    then count
    else cycle_len' (tens * 10 mod n) (count + 1)
  in
  if n mod 2 = 0 || n mod 5 = 0 then 0 else cycle_len' 10 1

let run () = List.max_by ~init:0 ~f:cycle_len ~gt:( > ) (List.range 2 1000)
