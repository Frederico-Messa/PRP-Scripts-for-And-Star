(define (problem FR_6_5)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6  - location
	    f1 f2 f3 f4 - fire_unit
	    v1 v2 v3 v4 v5 - victim
	    m1 m2 m3 m4 - medical_unit
)
 (:init 
	;;strategic locations
     (hospital l1)
     (water-at l6)
     (water-at l3)
     (water-at l5)
     (water-at l2)
	;;disaster info
     (fire l4)
     (victim-at v1 l1)
     (victim-status v1 hurt)
     (fire l4)
     (victim-at v2 l1)
     (victim-status v2 dying)
     (fire l5)
     (victim-at v3 l2)
     (victim-status v3 dying)
     (fire l5)
     (victim-at v4 l2)
     (victim-status v4 hurt)
     (fire l5)
     (victim-at v5 l1)
     (victim-status v5 hurt)
	;;map info
	(adjacent l1 l1)
	(adjacent l2 l2)
	(adjacent l3 l3)
	(adjacent l4 l4)
	(adjacent l5 l5)
	(adjacent l6 l6)
   (adjacent l1 l1)
   (adjacent l1 l1)
   (adjacent l1 l2)
   (adjacent l2 l1)
   (adjacent l1 l3)
   (adjacent l3 l1)
   (adjacent l1 l4)
   (adjacent l4 l1)
   (adjacent l1 l5)
   (adjacent l5 l1)
   (adjacent l2 l1)
   (adjacent l1 l2)
   (adjacent l2 l2)
   (adjacent l2 l2)
   (adjacent l2 l3)
   (adjacent l3 l2)
   (adjacent l2 l4)
   (adjacent l4 l2)
   (adjacent l2 l5)
   (adjacent l5 l2)
   (adjacent l3 l1)
   (adjacent l1 l3)
   (adjacent l3 l2)
   (adjacent l2 l3)
   (adjacent l4 l1)
   (adjacent l1 l4)
   (adjacent l4 l2)
   (adjacent l2 l4)
   (adjacent l5 l1)
   (adjacent l1 l5)
   (adjacent l5 l2)
   (adjacent l2 l5)
   (adjacent l5 l3)
   (adjacent l3 l5)
   (adjacent l5 l4)
   (adjacent l4 l5)
   (adjacent l6 l1)
   (adjacent l1 l6)
   (adjacent l6 l2)
   (adjacent l2 l6)
   (adjacent l6 l3)
   (adjacent l3 l6)
   (adjacent l6 l4)
   (adjacent l4 l6)
   (adjacent l6 l5)
   (adjacent l5 l6)
	(fire-unit-at f1 l2)
	(fire-unit-at f2 l4)
	(fire-unit-at f3 l1)
	(fire-unit-at f4 l4)
	(medical-unit-at m1 l6)
	(medical-unit-at m2 l3)
	(medical-unit-at m3 l6)
	(medical-unit-at m4 l2)
	)
 (:goal (and  (nfire l4) (nfire l4) (nfire l5) (nfire l5) (nfire l5)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy)))
 )
