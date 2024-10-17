open Core

let ( -- ) a b = List.init (b - a) ~f:(( + ) a)

let rec print_int_list = function
  | [] -> printf "\n"
  | hd :: tl ->
    printf "%d " hd;
    print_int_list tl

(** Exponentiation by Squaring, [pow base exponent] *)
let rec pow b = function
  | 0 -> 1
  | 1 -> b
  | n ->
    let b2 = pow b (n lsr 1) in
    if n land 1 = 0 then b2 * b2 else b * b2 * b2

module List = struct
  include List

  (** Returns [max] element of [xs] comparing [f x] using [gt] *)
  let max_by ~init ~f ~gt xs =
    let rec max_by' xs max fmax =
      match xs with
      | [] -> max
      | x :: xs ->
        let fx = f x in
        if gt fx fmax then max_by' xs x fx else max_by' xs max fmax
    in
    max_by' xs init (f init)
end

module ZSet = Set.Make (struct
  type t = Z.t

  let compare = Z.compare
  let sexp_of_t z = Sexp.Atom (Z.to_string z)

  let t_of_sexp = function
    | Sexp.Atom s -> Z.of_string s
    | _ -> invalid_arg "ZSet.t_of_sexp: Expected Atom"
end)
