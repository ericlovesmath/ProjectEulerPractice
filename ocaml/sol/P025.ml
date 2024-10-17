open Core
open Z

let run () =
  let rec fibto' a b steps =
    if String.length (Z.to_string a) = 1000
    then steps
    else fibto' b (a + b) (steps + one)
  in
  to_int (fibto' one one one)
