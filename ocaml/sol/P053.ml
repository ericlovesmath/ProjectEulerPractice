let factorial =
  let rec factorial' acc = function
    | 0 -> acc
    | n -> factorial' (Z.mul acc (Z.of_int n)) (n - 1)
  in
  factorial' Z.one

let choose n r = Z.div (factorial n) (Z.mul (factorial r) (factorial (n - r)))

let run () =
  List.init 100 (( + ) 1)
  |> List.concat_map (fun n -> List.init (n + 1) (choose n))
  |> List.filter (Z.leq (Z.of_int 1_000_000))
  |> List.length

include (val Solution.make run)
