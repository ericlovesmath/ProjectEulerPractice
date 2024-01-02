open Core

let fibto n =
  let rec fibto' a b = if a > n then [] else a :: fibto' b (a + b) in
  fibto' 1 2

let ans =
  fibto 4_000_000
  |> List.filter ~f:(fun x -> x mod 2 = 0)
  |> List.fold ~init:0 ~f:( + )
