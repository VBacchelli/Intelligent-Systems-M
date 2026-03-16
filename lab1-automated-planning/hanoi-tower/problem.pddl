(define (problem hanoi_tower)
(:domain hanoi)
(:objects
	d0 - disk
	d1 - disk
	d2 - disk
	d3 - disk
	base0 - disk
	base1 - disk
	base2 - disk
)

(:init
	(larger d1 d0)
	(larger d2 d0)
	(larger d2 d1)
	(larger d3 d0)
	(larger d3 d1)
	(larger d3 d2)

	(larger base0 d0)
	(larger base0 d1)
	(larger base0 d2)
	(larger base0 d3)
	
	(larger base1 d0)
	(larger base1 d1)
	(larger base1 d2)
	(larger base1 d3)
	
	(larger base2 d0)
	(larger base2 d1)
	(larger base2 d2)
	(larger base2 d3)

	(on_dsk d0 d1)
	(on_dsk d1 d2)
	(on_dsk d2 d3)
	(on_dsk d3 base0)

	(free_dsk d0)
	(free_dsk base1)
	(free_dsk base2)
)

(:goal
	(and
		(on_dsk d0 d1)
		(on_dsk d1 d2)
		(on_dsk d2 d3)
		(on_dsk d3 base2)
	)
)

)
