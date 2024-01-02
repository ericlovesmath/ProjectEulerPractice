open Core
open Utils
open Z

let ans =
  List.cartesian_product (List.range 2 101) (List.range 2 101)
  |> List.map ~f:(fun (a, b) -> pow (of_int a) b)
  |> List.fold ~init:ZSet.empty ~f:(fun acc x -> Set.add acc x)
  |> Set.length
