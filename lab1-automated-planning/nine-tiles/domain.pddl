(define (domain ninetilepuzzle)
  (:requirements :strips :typing)
  (:types tile place)

  (:predicates
    (is_empty ?p - place)                ; which place is currently the blank
    (is_adj   ?p1 - place ?p2 - place)   ; static adjacency relation (declared in problem)
    (at       ?t - tile  ?p - place)     ; tile positions
  )

  ; Move one tile from ?from into the blank at ?to; the blank moves to ?from
  (:action SLIDE
    :parameters (?t - tile ?from - place ?to - place)
    :precondition (and
      (at ?t ?from)
      (is_empty ?to)
      (is_adj ?from ?to))
    :effect (and
      (not (at ?t ?from))   ; tile leaves old place
      (at ?t ?to)           ; tile arrives at blank
      (not (is_empty ?to))  ; that place is no longer blank
      (is_empty ?from)))    ; the place where the tile was is now blank
)