(define (problem exs)
	(:domain entrenaminento)
	(:objects 
	dia1 dia2 dia3 dia4 dia5 dia6 dia7 dia8 dia9 dia10 dia11 dia12 dia13 dia14 dia15 
	niv1 niv2 niv3 niv4 niv5 niv6 niv7 niv8 niv9 niv10 
	ex0 ex1 ex2 ex3 ex4 )
	(:init 
	(dia dia1) (dia dia2) (dia-seguent dia1 dia2) (dia dia3) (dia-seguent dia2 dia3) (dia dia4) (dia-seguent dia3 dia4) (dia dia5) (dia-seguent dia4 dia5) (dia dia6) (dia-seguent dia5 dia6) (dia dia7) (dia-seguent dia6 dia7) (dia dia8) (dia-seguent dia7 dia8) (dia dia9) (dia-seguent dia8 dia9) (dia dia10) (dia-seguent dia9 dia10) (dia dia11) (dia-seguent dia10 dia11) (dia dia12) (dia-seguent dia11 dia12) (dia dia13) (dia-seguent dia12 dia13) (dia dia14) (dia-seguent dia13 dia14) (dia dia15) (dia-seguent dia14 dia15) 
	(dif-seguent niv1 niv2) (dif-seguent niv2 niv3) (dif-seguent niv3 niv4) (dif-seguent niv4 niv5) (dif-seguent niv5 niv6) (dif-seguent niv6 niv7) (dif-seguent niv7 niv8) (dif-seguent niv8 niv9) (dif-seguent niv9 niv10) 
	(ultima-dificultat ex0 niv9) (objectiu ex0 niv9) (preparador ex0 ex0) (ultima-dificultat ex1 niv3) (objectiu ex1 niv8) (ultima-dificultat ex2 niv7) (objectiu ex2 niv10) (ultima-dificultat ex3 niv2) (objectiu ex3 niv5) (preparador ex3 ex4) (ultima-dificultat ex4 niv3) (objectiu ex4 niv8) )
	(:goal )
)