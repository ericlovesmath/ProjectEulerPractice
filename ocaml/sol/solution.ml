module type S = sig
  val run : unit -> int
end

let make (sol : unit -> int) =
  (module struct
    let run = sol
  end : S)
