open! Core

(** The losing state is when the xor of the entire list of 3 numbers is 0. This
    is because in the case that they are not, you can always just remove a
    number such that the result is 0. In the case the xor is 0, by the nature
    of xor, any removal forces it to be nonzero. Therefore, anyone without a 0
    can enfore the other player to always be at a xor sum of 0, eventually
    causing them to hit the list of all 0s.

    This means the problem is when is "n ^ 2n ^ 3n = 0?"

    We have f(4 * n) = f(2n) + f(n)
    - Case of ending is 0 and case of ending in 01

    This means we have f(2^(n+2)) = f(2^(n+1)) + f(2^n).
    This reduces to fib(30)
  *)

let fib n =
  let rec fib' a b = function
    | 0 -> a
    | n -> fib' b (a + b) (n - 1)
  in
  fib' 1 2 n
      
let run () = fib 30
