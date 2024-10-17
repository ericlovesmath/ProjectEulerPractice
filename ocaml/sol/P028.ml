open! Core

let layer_sum n = 4 + (4 * n) + (16 * n * n)

let run () =
  let add_layer_sum acc n = acc + layer_sum n in
  List.fold ~init:1 ~f:add_layer_sum (List.range 1 501)

include (val Solution.make run)
