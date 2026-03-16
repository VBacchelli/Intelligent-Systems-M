(define (domain paint)
 (:requirements :strips :typing)
 (:types robot tile color)
 (:predicates
 (is_col ?c - color ?t - tile)
 (at ?r - robot ?t - tile)
 (is_adj ?t1 ?t2 - tile)
 (has_col ?r - robot ?c - color)
 (painted ?t - tile)
 )
(:action MOVE_RBT
 :parameters (?r - robot ?t1 ?t2 - tile)
 :precondition (and
 (at ?r ?t1)
 (is_adj ?t1 ?t2)
 (not (painted ?t2)))
 :effect (and
 (at ?r ?t2)
 (not (at ?r ?t1)))
)

(:action PAINT
 :parameters (?r - robot ?t - tile ?c - color)
 :precondition (and
 (at ?r ?t)
 (has_col ?r ?c))
 :effect (and
 (is_col ?c ?t)
 (painted ?t))
)
)