open Core
open Utils

let eval_word word =
  word
  |> String.to_list
  |> List.map ~f:(fun c -> Char.to_int c - Char.to_int 'A' + 1)
  |> List.fold ~init:0 ~f:( + )

let scores =
  In_channel.read_all "data/042_words.txt"
  |> String.strip
  |> String.split_on_chars ~on:[ ',' ]
  |> List.map ~f:(fun w -> String.sub ~pos:1 ~len:(String.length w - 2) w)
  |> List.map ~f:eval_word

(* Only need triangular numbers up to the max score *)
let triangles =
  let max_score = List.fold ~init:0 ~f:max scores in
  let rec triangles' n prev acc =
    if prev > max_score
    then acc
    else triangles' (n + 1) (prev + n) ((prev + n) :: acc)
  in
  triangles' 2 1 [ 1 ]

let ans = List.length @@ List.filter ~f:(List.mem triangles ~equal:( = )) scores

