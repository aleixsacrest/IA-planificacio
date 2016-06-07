(define (domain entrenaminento)
  (:requirements :strips :equality :typing)
  (:predicates 
       
    ;;;
    (dia ?d)
    (dia-actual ?d)
    (dia-seguent ?d1 ?d2)
    (exercici ?ex)
    (dificultat ?dif)
    (exercici-dia ?ex ?dia)
    (te-preparadors ?x ?dia)
    (te-objectiu ?x ?dia)
    (preparador ?x ?y) ;; ?y es preparador de ?x
    (dif-seguent ?x ?y) ;; ?y es la dificultat del seguent nivell de ?x
    (ultima-dificultat ?x ?y) ;; ?y es la dificultat amb la que s'ha realitzat l'exercici ?x per ultim cop
    (objectiu ?x ?y) ;; ?y es la dificultat objectiu que es vol assolir per l'exercici ?x pel programa
    (nObjectius ?n)
    (nObjectiusDema ?n)
    (exercicisFets ?n)
    
  )
    
  (:action Start
    :parameters (?dia ?dema)
    :precondition (and (dia ?dia) (dia-actual ?dia) (= ?dia dia0) (dia-seguent ?dia ?dema))
    :effect (and (not dia-actual ?dia) (dia-actual ?dema))
  )
  
  (:action fer-preparador
    :parameters (?dia ?ex_obj ?ex_prep ?dif_prep)
    :precondition (
      and 
      (dia ?dia) (dia-actual ?dia)
      (exercici ?ex_obj) (exercici ?ex_prep)
      (not (exercici-dia ?ex_prep ?dia))
      (te-objectiu ?ex_obj)
      (preparador ?ex_obj ?ex_prep)
      (not (te-preparadors ?ex_prep ?dia))
      (not (te-objectiu ?ex_prep ?dia))
      (dificultat ?dif_prep)
      (ultima-dificultat ?ex_prep ?dif_prep)
    )
    :effects (
      and
      (not (te-preparadors ?ex_obj ?dia))
      (exercici-dia ?ex_prep ?dia)
    )
  )
  
  (:action mirar-preparadors
    :parameters (?dia ?ex_obj ?ex_prep)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia)
      (exercici ?ex_obj) (exercici ?ex_prep)
      (exercici-dia ?dia ?ex_prep)
      (te-preparadors ?ex_obj ?dia)
      (preparador ?ex_obj ?ex_prep)
    )
    :effects ( (not (te-preparadors ?ex_obj ?dia)) )
  )
  
  (:action fer-exerciciObjectiu
    :parameters (?dia ?ex_obj ?ultdif_obj ?dif_obj ?n ?n1)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia)
      (exercici ?ex_obj)
      (not (te-preparadors ?ex_obj ?dia))
      (te-objectiu ?ex_obj)
      (not (exercici-dia ?ex_obj ?dia))
      (dificultat ?ultdif_obj) (dificultat ?dif_obj)
      (ultima-dificultat ?ex_obj ?ultdif_obj)
      (dif-seguent ?ultdif_obj ?dif_obj)
      (exercicisFets ?n)
      (incrN ?n ?n1)
    )
    :effects (
      and 
      (exercici-dia ?ex_obj ?dia)
      (not (ultima-dificultat ?ex_obj ?ultdif_obj))
      (ultima-dificultat ?ex_obj ?dif_obj)
      (not (exercicisFets ?n))
      (exercicisFets ?n1)
    )
  )
  
  (:action mirar-objectius
    :parameters (?ex_obj ?dif_obj ?n ?n1)
    :precondition (
      and
      (exercici ?ex_obj)
      (te-objectiu ?ex_obj)
      (dificultat ?dif_obj)
      (ultima-dificultat ?ex_obj ?dif_obj)
      (objectiu ?ex_obj ?dif_obj)
      (nObjectiusDema ?n)
      (incrN ?n1 ?n)
    )
    :effects ( 
      and 
      (not (te-objectiu ?ex_obj))
      (not (nObjectiusDema ?n))
      (nObjectiusDema ?n1)
    )
  )
  
  (:action canvi-dia
    :parameters (?dia ?dema ?nExs ?nDema)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia) (dia-seguent ?dia ?dema)
      (exercicisFets ?nExs)
      (nObjectius ?nExs)
      (nObjectiusDema ?nDema)
    )
    :effects (
      and
      (not (dia-actual ?dia)) (dia-actual ?dema)
      (not (exercicisFets ?nExs)) (exercicisFets n0)
      (not (nObjectius ?nExs)) (nObjectius ?nDema)
    )
  )
