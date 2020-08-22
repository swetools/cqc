open Oqc

val for_all : ?sample_size: int -> (int -> 'a) -> ('a -> result) -> result
val for_some : ?sample_size: int -> ?to_string: ('a -> string) ->
               (int -> 'a) -> ('a -> result) -> result
val for_one : ?sample_size: int -> ?to_string: ('a -> string) ->
              (int -> 'a) -> ('a -> result) -> result
       
module Forall (P : PREDICATE) : PROPOSITION
module Exists (P : PREDICATE) : PROPOSITION
module ExistsUnique (P : PREDICATE) : PROPOSITION

module Forall2 (R : RELATION) : PREDICATE
module Exists2 (R : RELATION) : PREDICATE
module ExistsUnique2 (R : RELATION) : PREDICATE
