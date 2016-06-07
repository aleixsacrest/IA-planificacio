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
    (te-preparador ?x ?dia ?num)
    (te-objectiu ?x)
    (preparador ?x ?y) ;; ?y es preparador de ?x
    (dif-seguent ?x ?y) ;; ?y es la dificultat del seguent nivell de ?x
    (ultima-dificultat ?x ?y) ;; ?y es la dificultat amb la que s'ha realitzat l'exercici ?x per ultim cop
    (objectiu ?x ?y) ;; ?y es la dificultat objectiu que es vol assolir per l'exercici ?x pel programa
    (nObjectius ?n)
    (nObjectiusDema ?n)
    (exercicisFets ?n)
	(decrP ?x ?y)
    (incrN ?x ?y)
    (fer-prep ?x ?y)
    
  )
    
  (:action Start
    :parameters (?dia ?dema)
    :precondition (and (dia ?dia) (dia-actual ?dia) (= ?dia dia0) (dia-seguent ?dia ?dema))
    :effect (and (not (dia-actual ?dia)) (dia-actual ?dema) (exercicisFets n0))
  )
  
  
  
  (:action preparar-objectiu
   :parameters (?dia ?ex_obj ?ex_prep ?numP)
   :precondition (   
      and
      (dia ?dia) (dia-actual ?dia) (not (= ?dia dia0))
      (exercici ?ex_obj) (exercici ?ex_prep)
      (not (exercici-dia ?ex_prep ?dia))
      (te-preparador ?ex_obj ?dia ?numP)
	  (not (= ?numP num0))
      (preparador ?ex_obj ?ex_prep)
   )
   :effect (fer-prep ?ex_prep ?ex_obj)
  )
  
  (:action fer-preparador
    :parameters (?dia ?ex_obj ?ex_prep ?npreps_obj ?npreps_obj1)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia) (not (= ?dia dia0))
      (exercici ?ex_prep) (exercici ?ex_obj)
      (fer-prep ?ex_prep ?ex_obj)
      ;(or (not (te-preparador ?ex_prep ?dia ?numn)) (te-preparador ?ex_prep ?dia num0))
	  (te-preparador ?ex_prep ?dia num0)
	  (te-preparador ?ex_obj ?dia ?npreps_obj)
	  (decrP ?npreps_obj ?npreps_obj1)
    )
    :effect (
      and
      (not (fer-prep ?ex_prep ?ex_obj))
      (not (te-preparador ?ex_obj ?dia ?npreps_obj))
	  (te-preparador ?ex_obj ?dia ?npreps_obj1)
      (exercici-dia ?ex_prep ?dia)
    )
  )
  
  (:action fer-preparador-preparador
    :parameters (?dia ?ex_obj ?ex_prep ?ex_prep-prep ?numP)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia) (not (= ?dia dia0))
      (exercici ?ex_prep) (exercici ?ex_obj)
      (fer-prep ?ex_prep ?ex_obj)
      (te-preparador ?ex_prep ?dia ?numP) (preparador ?ex_prep ?ex_prep-prep)
	  (not (= ?numP num0))
    )
    :effect (
      fer-prep ?ex_prep-prep ?ex_prep
    )
  )
  
  
  
  (:action fer-exerciciObjectiu
    :parameters (?dia ?ex_obj ?ultdif_obj ?dif_obj ?n ?n1)
    :precondition (
      and
      (dia ?dia) (dia-actual ?dia) (not (= ?dia dia0))
      (exercici ?ex_obj)
      (te-preparador ?ex_obj ?dia num0)
      (te-objectiu ?ex_obj)
      (not (exercici-dia ?ex_obj ?dia))
      (dificultat ?ultdif_obj) (dificultat ?dif_obj)
      (ultima-dificultat ?ex_obj ?ultdif_obj)
      (dif-seguent ?ultdif_obj ?dif_obj)
      (exercicisFets ?n)
      (incrN ?n ?n1)
    )
    :effect (
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
    :effect ( 
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
    :effect (
      and
      (not (dia-actual ?dia)) (dia-actual ?dema)
      (not (exercicisFets ?nExs)) (exercicisFets n0)
      (not (nObjectius ?nExs)) (nObjectius ?nDema)
    )
  )
)
