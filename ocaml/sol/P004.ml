open Core

let is_palindrome n =
  let str_n = string_of_int n in
  String.equal str_n (String.rev str_n)

let ans =
  List.cartesian_product (List.range 100 1000) (List.range 100 1000)
  |> List.map ~f:(fun (x, y) -> x * y)
  |> List.filter ~f:is_palindrome
  |> List.sort ~compare:(fun x y -> y - x)
  |> List.hd_exn
