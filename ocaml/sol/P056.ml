open Z

let rec max = function
  | [] -> raise (Invalid_argument "max []")
  | [ x ] -> x
  | x :: y :: rem -> max ((if x > y then x else y) :: rem)

let digit_sum n =
  let ten = Z.of_int 10 in
  let rec digit_sum' acc n =
    if n = zero then acc else digit_sum' (acc + (n mod ten)) (n / ten)
  in
  digit_sum' zero n

let run () =
  List.init 100 Z.of_int
  |> List.concat_map (fun a -> List.init 100 (Z.pow a))
  |> List.map digit_sum
  |> max
  |> Z.to_int
