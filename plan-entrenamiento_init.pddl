

(define (problem exs)
  (:domain entrenaminento)
  (:objects ex1 dia0 dia1 dia2 dia3 niv1 niv2 niv3)
  (:init (exercici ex1) (dia dia0) (dia dia1) (dia dia2) (dia dia3) (realitzat ex1 dia0) (dificultat ex1 niv1) (objectiu ex1 niv3)
		  (nivell niv1) (nivell niv2) (nivell niv3) (seguent niv1 niv2) (seguent niv2 niv3))
  (:goal (and (dificultat ex1 niv3) (realitzat ex1 dia3)))
)
