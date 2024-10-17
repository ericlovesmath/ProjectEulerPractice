(*
   x and 6x includes same number of digits
   Starts with 1
*)

let digits n =
  let rec digits' acc = function
    | d when d < 10 -> d :: acc
    | n -> digits' ((n mod 10) :: acc) (n / 10)
  in
  List.sort compare (digits' [] n)

let is_valid n =
  let rec all_equal = function
    | x :: y :: rem -> x = y && all_equal rem
    | _ -> true
  in
  let test_nums = List.init 6 (fun i -> n * (i + 1)) in
  all_equal (List.map digits test_nums)

let ans = List.find is_valid (List.init 1000000 (( + ) 1))
