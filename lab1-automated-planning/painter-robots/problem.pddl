(define (problem paint_tiles)
(:domain paint)
(:objects
 p11 p12 p13 p21 p22 p23 p31 p32 p33 - tile
 r1 r2 - robot
 y b - color
)
(:init

(has_col r1 b) (has_col r2 y)

(at r1 p11) (at r2 p33)
 
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
  (and
    (is_col b p11) (is_col y  p12) (is_col b p13)
    (is_col y  p21) (is_col b p22) (is_col y  p23)
    (is_col b p31) (is_col y  p32) (is_col b p33)
  )
)
)