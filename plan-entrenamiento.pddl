(define (domain entrenaminento)
  (:requirements :strips :equality :typing)
  (:predicates 
    
    
    ;(realitzat ?x ?d)  ;exercici ?x realitzat dia ?d
    ;(te-preparadors ?x)
    ;;;
    (dia ?d)
    (dia-actual ?d)
    (dia-seguent ?d1 ?d2)
    (exercici ?ex)
    (dificultat ?dif)
    (exercici-dia ?ex ?dia)
	
	(preparador ?x ?y) ;; ?y es preparador de ?x
	(dif-seguent ?x ?y) ;; ?y es la dificultat del seguent nivel de ?x
	(ultima-dificultat ?x ?y) ;; ?y es la dificultat amb la que s'ha realitzat l'exercici ?x per ultim cop
	(objectiu ?x ?y) ;; ?y es la dificultat objectiu que es vol assolir per l'exercici ?x pel programa
  )
    
  (:action Start
    :parameters (?dia ?dema)
    :precondition (and (dia ?dia) (dia-actual ?dia) (= ?dia dia0) (dia-seguent ?dia ?dema))
    :effect (and (not dia-actual ?dia) (dia-actual ?dema))
  )
  
  (:action fer-
  
  
  
  
  
  
  
  (:action exericici-prepararador
    :parameters (?dia ?ex_obj ?dif_obj ?ex_prep ?dif_prep)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia)
      (exerici ?ex_obj) (dificultat ?dif_obj) (dificultat-correcta ?ex_obj ?dif_obj ?dia)
      (exercici ?ex_prep) (dificultat ?dif_prep) (dificultat-correcta ?ex_prep ?dif_prep)
      (es-preparador ?ex_prep ?ex_obj) (not (exercici-dia ?ex_prep ?dif_prep ?dia))
    )
    :effect (and (exercici-dia ?ex_prep ?dif_prep ?dia))
  )
  
  (:action exercici-objectiu
    :parameters (?dia ?ex_obj ?dif_obj ?ex_prep ?dif_prep)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia)
      (exerici ?ex_obj) (dificultat ?dif_obj) (dificultat-correcta ?ex_obj ?dif_obj)
      (exercici ?ex_prep) (dificultat ?dif_prep) (dificultat-correcta ?ex_prep ?dif_prep)
      (es-preparador ?ex_prep ?ex_obj) (exercici-dia ?ex_prep ?dif_prep ?dia)
    )
  )
  
  
  
  
  
  
  (:action exercitar-prec
	:parameters (?x ?dif1 ?dif2 ?d ?y)
	:precondition (and (exercici ?x) (dificultat ?x ?dif1) (nivell ?dif1) (nivell ?dif2) (seguent ?dif1 ?dif2) (dia ?d) (exercici ?y) (te-preparadors ?x) 
			   (preparador ?x ?y) (not (realitzat ?x ?d)) (realitzat ?y ?d) (not (objectiu ?x ?dif1)))
	:effect (and (dificultat ?x ?dif2) (realitzat ?x ?d)))
	
  (:action exercitar
	:parameters (?x ?dif1 ?dif2 ?d)
	:precondition (and (exercici ?x) (dificultat ?x ?dif1) (nivell ?dif1) (nivell ?dif2) (seguent ?dif1 ?dif2) (dia ?d) (not (te-preparadors ?x))
			   (not (realitzat ?x ?d)) (not (objectiu ?x ?dif1)))
    :effect (and (dificultat ?x ?dif2) (realitzat ?x ?d)))
 )
