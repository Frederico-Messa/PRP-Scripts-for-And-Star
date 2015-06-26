(define (domain schedule)
 (:requirements :rewards :adl :probabilistic-effects)
 (:types packet class timestep phase packetstatus)
 (:constants C0 C1 C2 C3 - class U0 U1 U2 U3 U4 U5 - timestep
 Arrivals-and-updating Cleanup-and-service - phase
 Available Queued - packetstatus)
 (:predicates
   (current-phase ?s - phase)
   (packetclass ?p - packet ?c - class)
   (timetolive ?p - packet ?t - timestep)
   (status ?p - packet ?i - packetstatus)
   (processed-arrivals ?c - class)
   (need-to-process-arrivals ?c - class)
   (dropped ?p - packet)
   (not-dropped ?p - packet)
   (served ?c - class)
   (alive)
 )
 (:action process-arrivals
  :parameters (?arriving-packet - packet ?c - class)
  :precondition (and
                    (current-phase Arrivals-and-updating)
                    (status ?arriving-packet Available)
                    (need-to-process-arrivals ?c))
  :effect (and
             (processed-arrivals ?c)
             (not (need-to-process-arrivals ?c))
             (probabilistic 6/1000
                            (when (= ?c C0)
                              (and (status ?arriving-packet Queued)
                                   (not (status ?arriving-packet Available))
                                   (packetclass ?arriving-packet ?c)
                                   (timetolive ?arriving-packet U5))))
             (probabilistic 110/300
                            (when (not (= ?c C0))
                              (and (status ?arriving-packet Queued)
                                   (not (status ?arriving-packet Available))
                                   (packetclass ?arriving-packet ?c)
                                   (timetolive ?arriving-packet U5))))))
(:action time-update
 :precondition (and
                   (current-phase Arrivals-and-updating)
                   (forall (?c - class) (processed-arrivals ?c)))
 :effect (and 
            (not (current-phase Arrivals-and-updating))
            (current-phase Cleanup-and-service)
            (forall (?p - packet)
                    (when (timetolive ?p U0)
                          (and (dropped ?p) (not (not-dropped ?p)))))
            (forall (?p - packet)
                    (when (timetolive ?p U1)
                          (timetolive ?p U0)))
            (forall (?p - packet)
                    (when (timetolive ?p U2)
                          (timetolive ?p U1)))
            (forall (?p - packet)
                    (when (timetolive ?p U3)
                          (timetolive ?p U2)))
            (forall (?p - packet)
                    (when (timetolive ?p U4)
                          (timetolive ?p U3)))
            (forall (?p - packet)
                    (when (timetolive ?p U5)
                          (timetolive ?p U4)))
                          
 ))
(:action reclaim-packet
  :parameters (?p - packet ?c - class)
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (packetclass ?p ?c))
  :effect (and
              (not (dropped ?p))
              (not-dropped ?p)
              (forall (?u - timestep) (not (timetolive ?p ?u)))
              (not (packetclass ?p ?c))
              (status ?p Available)
              (not (status ?p Queued))
               (probabilistic 10/2000 (when (= ?c C3) (not (alive))))
               (probabilistic 20/2000 (when (= ?c C2) (not (alive))))
               (probabilistic 40/2000 (when (= ?c C1) (not (alive))))
               (probabilistic 70/100 (when (= ?c C0) (not (alive))))
))
(:action packet-serve
  :parameters (?p - packet ?c - class)
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (forall (?p1 - packet) (not-dropped ?p1))
                    (packetclass ?p ?c))
  :effect (and
            (forall (?c1 - class) (not (processed-arrivals ?c1)))
            (forall (?c1 - class) (need-to-process-arrivals ?c1))
            (not (current-phase Cleanup-and-service))
            (current-phase Arrivals-and-updating)
            (served ?c)
            (not (packetclass ?p ?c))
            (forall (?u - timestep) (not (timetolive ?p ?u)))
            (not (status ?p Queued))
            (status ?p Available)))
(:action serve-nothing
  :precondition (and
                    (current-phase Cleanup-and-service)
                    (forall (?p1 - packet) (not-dropped ?p1)))
  :effect (and    
              (forall (?c1 - class) (not (processed-arrivals ?c1)))
              (forall (?c1 - class) (need-to-process-arrivals ?c1))
              (not (current-phase Cleanup-and-service))
              (current-phase Arrivals-and-updating))))
  (define (problem a-schedule-problem545)
  (:domain schedule)
  (:objects P0 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16 P17 P18 P19 P20 P21 P22 P23  - packet)
  (:init 
         (alive)
         (current-phase Arrivals-and-updating)
         (need-to-process-arrivals C0)
         (need-to-process-arrivals C1)
         (need-to-process-arrivals C2)
         (need-to-process-arrivals C3)
         (status P0 Available)
         (status P1 Available)
         (status P2 Available)
         (status P3 Available)
         (status P4 Available)
         (status P5 Available)
         (status P6 Available)
         (status P7 Available)
         (status P8 Available)
         (status P9 Available)
         (status P10 Available)
         (status P11 Available)
         (status P12 Available)
         (status P13 Available)
         (status P14 Available)
         (status P15 Available)
         (status P16 Available)
         (status P17 Available)
         (status P18 Available)
         (status P19 Available)
         (status P20 Available)
         (status P21 Available)
         (status P22 Available)
         (status P23 Available)
         (not-dropped P0)
         (not-dropped P1)
         (not-dropped P2)
         (not-dropped P3)
         (not-dropped P4)
         (not-dropped P5)
         (not-dropped P6)
         (not-dropped P7)
         (not-dropped P8)
         (not-dropped P9)
         (not-dropped P10)
         (not-dropped P11)
         (not-dropped P12)
         (not-dropped P13)
         (not-dropped P14)
         (not-dropped P15)
         (not-dropped P16)
         (not-dropped P17)
         (not-dropped P18)
         (not-dropped P19)
         (not-dropped P20)
         (not-dropped P21)
         (not-dropped P22)
         (not-dropped P23)
  )
  (:goal (and (alive) (forall (?c - class) (served ?c))))
  (:goal-reward 1)
  (:metric maximize (reward))
  )
