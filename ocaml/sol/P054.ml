let rev =
  let rec rev' acc = function
    | 0 -> acc
    | n -> rev' ((10 * acc) + (n mod 10)) (n / 10)
  in
  rev' 0

let lychrel n =
  let rec lychrel' curr = function
    | 0 -> true
    | steps ->
      let next = curr + rev curr in
      next <> rev next && lychrel' next (steps - 1)
  in
  lychrel' n 50

let run () = List.init 10_000 Fun.id |> List.filter lychrel |> List.length
