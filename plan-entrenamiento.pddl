;; The Traveling Salesman problem, STRIPS version.
;; The predicate "connected" defines the graph; it doesn't have to
;; be made symmetric, since there're actions for going both "along"
;; and "against" the direction of an arc.

(define (domain entrenaminento)
  (:requirements :strips)
  (:predicates (exercici ?x) (dia ?d) (realitzat ?x ?d) (dificultat ?x ?dif) (objectiu ?x ?dif)
			   (te-precursors ?x) (precursor ?x ?y) (te-preparadors ?x) (preparador ?x ?y) (nivell ?n) (seguent ?n1 ?n2))
  
  (:action exercitar-prec
	:parameters (?x ?dif1 ?dif2 ?d ?y)
	:precondition (and (exercici ?x) (dificultat ?x ?dif1) (nivell ?dif1) (nivell ?dif2) (seguent ?dif1 ?dif2) (dia ?d) (exercici ?y) (te-preparadors ?x) (preparador ?x ?y)
				  (not (realitzat ?x ?d)) (realitzat ?y ?d) (not (objectiu ?x ?dif1)))
	:effect (and (dificultat ?x ?dif2) (realitzat ?x ?d)))
	
  (:action exercitar
	:parameters (?x ?dif1 ?dif2 ?d)
	:precondition (and (exercici ?x) (dificultat ?x ?dif1) (nivell ?dif1) (nivell ?dif2) (seguent ?dif1 ?dif2) (dia ?d) (not (te-preparadors ?x))
				   (not (realitzat ?x ?d)) (not (objectiu ?x ?dif1)))
    :effect (and (dificultat ?x ?dif2) (realitzat ?x ?d)))
 )
