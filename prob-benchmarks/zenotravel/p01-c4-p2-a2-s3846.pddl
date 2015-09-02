(define (problem zeno_4_2_2_3846)
  (:domain zenotravel)
  (:objects c0 c1 c2 c3 - city p0 p1 - person a0 a1 - aircraft f0 f1 f2 f3 f4 - flevel)
  (:init (next f0 f1) (next f1 f2) (next f2 f3) (next f3 f4)
         (at-person p0 c1) (not-boarding p0) (not-debarking p0)
         (at-person p1 c0) (not-boarding p1) (not-debarking p1)
         (at-aircraft a0 c3) (fuel-level a0 f3) (not-refueling a0)
         (at-aircraft a1 c3) (fuel-level a1 f1) (not-refueling a1)
  )
  (:goal (and (at-person p0 c1) (at-person p1 c2)))
)
