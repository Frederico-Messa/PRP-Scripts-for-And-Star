(define (problem bw_18_p13)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - block)
  (:init (emptyhand) (on b1 b14) (on b2 b16) (on b3 b18) (on-table b4) (on b5 b12) (on-table b6) (on b7 b1) (on b8 b2) (on b9 b8) (on b10 b17) (on-table b11) (on b12 b15) (on b13 b7) (on-table b14) (on b15 b3) (on b16 b4) (on b17 b6) (on-table b18) (clear b5) (clear b9) (clear b10) (clear b11) (clear b13))
  (:goal (and (emptyhand) (on b1 b3) (on b2 b13) (on b3 b8) (on-table b4) (on b5 b15) (on b6 b12) (on b7 b10) (on b8 b5) (on-table b9) (on-table b10) (on b11 b14) (on b12 b18) (on b13 b1) (on-table b14) (on b15 b16) (on b16 b11) (on b17 b7) (on b18 b9) (clear b2) (clear b4) (clear b6) (clear b17)))
)
