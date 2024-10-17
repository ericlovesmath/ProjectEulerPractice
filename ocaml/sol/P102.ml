open! Core
open! Utils

let data =
  let triangle_of_list points =
    match List.map points ~f:Int.of_string with
      | [x1; y1; x2; y2; x3; y3] -> ((x1, y1), (x2, y2), (x3, y3))
      | _ -> failwith "Unexpected Input"
  in
  In_channel.read_all "data/102.txt"
  |> String.strip
  |> String.split_lines
  |> List.map ~f:(String.split_on_chars ~on:[ ',' ])
  |> List.map ~f:(triangle_of_list)

let origin_in_triangle (p1, p2, p3) =
  let origin_side (x1, y1) (x2, y2) = x2 * (y1 - y2) - (x1 - x2) * y2 > 0 in
  let s1 = origin_side p1 p2 in
  let s2 = origin_side p2 p3 in
  let s3 = origin_side p3 p1 in
  (s1 && s2 && s3) || (not s1 && not s2 && not s3)

let ans = data
  |> List.filter ~f:origin_in_triangle
  |> List.length
