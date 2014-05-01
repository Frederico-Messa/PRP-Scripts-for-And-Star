(define (problem FR_6_6)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6  - location
	    f1 - fire_unit
	    v1 v2 v3 v4 v5 v6 - victim
	    m1 - medical_unit
)
 (:init 
	;;strategic locations
     (hospital l4)
     (hospital l1)
     (hospital l3)
     (hospital l6)
     (water-at l3)
     (water-at l5)
	;;disaster info
     (fire l2)
     (victim-at v1 l5)
     (victim-status v1 dying)
     (fire l3)
     (victim-at v2 l6)
     (victim-status v2 dying)
     (fire l3)
     (victim-at v3 l6)
     (victim-status v3 hurt)
     (fire l5)
     (victim-at v4 l1)
     (victim-status v4 hurt)
     (fire l4)
     (victim-at v5 l1)
     (victim-status v5 dying)
     (fire l6)
     (victim-at v6 l2)
     (victim-status v6 dying)
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
   (adjacent l2 l1)
   (adjacent l1 l2)
   (adjacent l2 l2)
   (adjacent l2 l2)
   (adjacent l2 l3)
   (adjacent l3 l2)
   (adjacent l2 l4)
   (adjacent l4 l2)
   (adjacent l3 l1)
   (adjacent l1 l3)
   (adjacent l4 l1)
   (adjacent l1 l4)
   (adjacent l5 l1)
   (adjacent l1 l5)
   (adjacent l5 l2)
   (adjacent l2 l5)
   (adjacent l5 l3)
   (adjacent l3 l5)
   (adjacent l6 l1)
   (adjacent l1 l6)
   (adjacent l6 l2)
   (adjacent l2 l6)
   (adjacent l6 l3)
   (adjacent l3 l6)
   (adjacent l6 l4)
   (adjacent l4 l6)
	(fire-unit-at f1 l1)
	(medical-unit-at m1 l4)
	)
 (:goal (and  (nfire l2) (nfire l3) (nfire l3) (nfire l5) (nfire l4) (nfire l6)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy)))
 )
