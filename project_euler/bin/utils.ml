open Core

let ( -- ) a b = List.init (b - a) ~f:(( + ) a)

let rec print_int_list = function
  | [] -> printf "\n"
  | hd :: tl ->
      printf "%d " hd;
      print_int_list tl

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
