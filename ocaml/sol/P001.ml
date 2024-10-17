open Core

let run () =
  List.range 1 1000
  |> List.filter ~f:(fun x -> x mod 3 = 0 || x mod 5 = 0)
  |> List.fold ~init:0 ~f:( + )
