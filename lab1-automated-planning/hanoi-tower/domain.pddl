(define (domain hanoi)
  (:requirements :strips :typing)
  (:types disk)
  
; Bars are modeled as very large disks (bigA, bigB, bigC), so every support is a disk.
; Each real disk is smaller than any of these big disks, so they can never be moved. 
; This avoids special peg predicates and keeps the domain much cleaner and simpler.
(:predicates
	(larger ?d1 ?d2 - disk)
	(on_dsk ?d1 ?d2 - disk)
	(free_dsk ?d - disk)
)

(:action MOVE
   :parameters (?dt ?ds ?dd - disk)
   :precondition (and (free_dsk ?dt) (free_dsk ?dd) (on_dsk ?dt ?ds)
					   (larger ?dd ?dt))
   :effect (and (on_dsk ?dt ?dd) (not (on_dsk ?dt ?ds))
			   (not (free_dsk ?dd)) (free_dsk ?ds))
)

)

