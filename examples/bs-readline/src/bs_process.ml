

(* external stdin : Bs_stream.readable = *)
(*   "stdin" [@@bs.val] [@@bs.module "process"] *)
(* external stdout : Bs_stream.writable =  *)
(*   "stdout" [@@bs.val] [@@bs.module "process"] *)

(* external exit : int -> unit = "exit" [@@bs.call] [@@bs.module "process"] *)


external process : 
  [%bs.obj: <
            stdin : Bs_stream.readable;
            stdout : Bs_stream.writable;
            exit : int -> unit [@bs.meth];

> ] = "global.process" [@@bs.val]
(** ideas
    {[
      module%bs Process : sig
        val stdin : Bs_stream.readable 
        val stdout : Bs_stream.writable 
        val exit : int -> unit 
      end
    ]}
*)
