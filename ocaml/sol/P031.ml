open Core

let denoms = [| 1; 2; 5; 10; 20; 50; 100; 200 |]

let coins target =
  let ways = Array.create ~len:(target + 1) 0 in
  ways.(0) <- 1;
  for i = 0 to Array.length denoms - 1 do
    for j = denoms.(i) to target do
      ways.(j) <- ways.(j) + ways.(j - denoms.(i))
    done
  done;
  ways.(target)

let run () = coins 200
