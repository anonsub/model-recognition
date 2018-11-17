(define (domain S5-O4)    ;;; (d|a)a(ba)*c+d(dc*d)*
  (:requirements :strips)
  (:predicates (head ?x)
               (next ?x1 ?x2)
               (stateS0) (stateS1) (stateS2) (stateS3) (stateS4)
               (a ?x) (c ?x) (b ?x) (d ?x))

(:action update-rule-S0-a
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS0) (a ?x1))
  :effect (and (not (head ?x1)) (not (stateS0))
               (head ?x2) (stateS1)))

(:action update-rule-S0-c
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS0) (c ?x1))
  :effect (and (not (head ?x1)) (not (stateS0))
               (head ?x2)))

(:action update-rule-S0-b
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS0) (b ?x1))
  :effect (and (not (head ?x1)) (not (stateS0))
               (head ?x2)))

(:action update-rule-S0-d
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS0) (d ?x1))
  :effect (and (not (head ?x1)) (not (stateS0))
               (head ?x2) (stateS1)))

(:action update-rule-S1-a
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS1) (a ?x1))
  :effect (and (not (head ?x1)) (not (stateS1))
               (head ?x2) (stateS2)))

(:action update-rule-S1-c
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS1) (c ?x1))
  :effect (and (not (head ?x1)) (not (stateS1))
               (head ?x2)))

(:action update-rule-S1-b
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS1) (b ?x1))
  :effect (and (not (head ?x1)) (not (stateS1))
               (head ?x2)))

(:action update-rule-S1-d
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS1) (d ?x1))
  :effect (and (not (head ?x1)) (not (stateS1))
               (head ?x2)))

(:action update-rule-S2-a
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS2) (a ?x1))
  :effect (and (not (head ?x1)) (not (stateS2))
               (head ?x2)))

(:action update-rule-S2-c
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS2) (c ?x1))
  :effect (and (not (head ?x1)) (not (stateS2))
               (head ?x2) (stateS3)))

(:action update-rule-S2-b
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS2) (b ?x1))
  :effect (and (not (head ?x1)) (not (stateS2))
               (head ?x2) (stateS1)))

(:action update-rule-S2-d
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS2) (d ?x1))
  :effect (and (not (head ?x1)) (not (stateS2))
               (head ?x2)))

(:action update-rule-S3-a
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS3) (a ?x1))
  :effect (and (not (head ?x1)) (not (stateS3))
               (head ?x2)))

(:action update-rule-S3-c
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS3) (c ?x1))
  :effect (and (not (head ?x1))
               (head ?x2)))

(:action update-rule-S3-b
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS3) (b ?x1))
  :effect (and (not (head ?x1)) (not (stateS3))
               (head ?x2)))

(:action update-rule-S3-d
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS3) (d ?x1))
  :effect (and (not (head ?x1)) (not (stateS3))
               (head ?x2) (stateS4)))

(:action update-rule-S4-a
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS4) (a ?x1))
  :effect (and (not (head ?x1)) (not (stateS4))
               (head ?x2)))

(:action update-rule-S4-c
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS4) (c ?x1))
  :effect (and (not (head ?x1)) (not (stateS4))
               (head ?x2)))

(:action update-rule-S4-b
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS4) (b ?x1))
  :effect (and (not (head ?x1)) (not (stateS4))
               (head ?x2)))

(:action update-rule-S4-d
  :parameters (?x1 ?x2)
  :precondition (and (head ?x1) (next ?x1 ?x2) (stateS4) (d ?x1))
  :effect (and (not (head ?x1)) (not (stateS4))
               (head ?x2) (stateS3)))

)
