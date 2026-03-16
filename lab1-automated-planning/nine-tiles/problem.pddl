(define (problem nine_tiles)
(:domain ninetilepuzzle)
(:objects
 t1 t2 t3 t4 t5 t6 t7 t8 - tile
 p11 p12 p13 p21 p22 p23 p31 p32 p33 - place
)
(:init

;; Blank tile
 (is_empty p22)

;; Initial tiles positions
 (at t1 p23) (at t2 p21) 
 (at t3 p12) (at t4 p13)
 (at t5 p33) (at t6 p32)
 (at t7 p11) (at t8 p31)
 
 
;; Adjacency facts

;; Row 1
(is_adj p11 p12) (is_adj p12 p11)
(is_adj p12 p13) (is_adj p13 p12)

(is_adj p11 p21) (is_adj p21 p11)
(is_adj p12 p22) (is_adj p22 p12)
(is_adj p13 p23) (is_adj p23 p13)

;; Row 2
(is_adj p21 p22) (is_adj p22 p21)
(is_adj p22 p23) (is_adj p23 p22)

(is_adj p21 p31) (is_adj p31 p21)
(is_adj p22 p32) (is_adj p32 p22)
(is_adj p23 p33) (is_adj p33 p23)

;; Row 3
(is_adj p31 p32) (is_adj p32 p31)
(is_adj p32 p33) (is_adj p33 p32)

)
(:goal
 (and (at t1 p11) (at t2 p12)
 (at t3 p13) (at t4 p21)
 (at t5 p22) (at t6 p23)
 (at t7 p31) (at t8 p32))
)
)