(define (problem exs)
	(:domain entrenaminento)
	(:objects 
		dia0 dia1 dia2 dia3 dia4 dia5 dia6 dia7 dia8 dia9 dia10 dia11 dia12 dia13 dia14 dia15 
		niv1 niv2 niv3 niv4 niv5 niv6 niv7 niv8 niv9 niv10 
		ex0 ex1 ex2 ex3 ex4 ex5 ex6 ex7 ex8 ex9 ex10 ex11 ex12 ex13 ex14 ex15 ex16 ex17 ex18 ex19 
		n0 n1 n2 n3 n4 n5 n6 n7 )
	(:init 
		(dia dia0) (dia-actual dia0)
		(dia dia1) (dia-seguent dia0 dia1)
		(dia dia2) (dia-seguent dia1 dia2)
		(dia dia3) (dia-seguent dia2 dia3)
		(dia dia4) (dia-seguent dia3 dia4)
		(dia dia5) (dia-seguent dia4 dia5)
		(dia dia6) (dia-seguent dia5 dia6)
		(dia dia7) (dia-seguent dia6 dia7)
		(dia dia8) (dia-seguent dia7 dia8)
		(dia dia9) (dia-seguent dia8 dia9)
		(dia dia10) (dia-seguent dia9 dia10)
		(dia dia11) (dia-seguent dia10 dia11)
		(dia dia12) (dia-seguent dia11 dia12)
		(dia dia13) (dia-seguent dia12 dia13)
		(dia dia14) (dia-seguent dia13 dia14)
		(dia dia15) (dia-seguent dia14 dia15)

		(dificultat niv1) 
		(dificultat niv2) (dif-seguent niv1 niv2) 
		(dificultat niv3) (dif-seguent niv2 niv3) 
		(dificultat niv4) (dif-seguent niv3 niv4) 
		(dificultat niv5) (dif-seguent niv4 niv5) 
		(dificultat niv6) (dif-seguent niv5 niv6) 
		(dificultat niv7) (dif-seguent niv6 niv7) 
		(dificultat niv8) (dif-seguent niv7 niv8) 
		(dificultat niv9) (dif-seguent niv8 niv9) 
		(dificultat niv10) (dif-seguent niv9 niv10) 
		
		(exercici ex0) (ultima-dificultat ex0 niv5) 
		(exercici ex1) (ultima-dificultat ex1 niv7) (objectiu ex1 niv9) (te-objectiu ex1)  (te-preparador ex1 dia1) (te-preparador ex1 dia2) (te-preparador ex1 dia3) (te-preparador ex1 dia4) (te-preparador ex1 dia5) (te-preparador ex1 dia6) (te-preparador ex1 dia7) (te-preparador ex1 dia8) (te-preparador ex1 dia9) (te-preparador ex1 dia10) (te-preparador ex1 dia11) (te-preparador ex1 dia12) (te-preparador ex1 dia13) (te-preparador ex1 dia14) (te-preparador ex1 dia15)(preparador ex1 ex8) 
		(exercici ex2) (ultima-dificultat ex2 niv6) 
		(exercici ex3) (ultima-dificultat ex3 niv9) 
		(exercici ex4) (ultima-dificultat ex4 niv7) (objectiu ex4 niv10) (te-objectiu ex4) 
		(exercici ex5) (ultima-dificultat ex5 niv6) (objectiu ex5 niv7) (te-objectiu ex5)  (te-preparador ex5 dia1) (te-preparador ex5 dia2) (te-preparador ex5 dia3) (te-preparador ex5 dia4) (te-preparador ex5 dia5) (te-preparador ex5 dia6) (te-preparador ex5 dia7) (te-preparador ex5 dia8) (te-preparador ex5 dia9) (te-preparador ex5 dia10) (te-preparador ex5 dia11) (te-preparador ex5 dia12) (te-preparador ex5 dia13) (te-preparador ex5 dia14) (te-preparador ex5 dia15)(preparador ex5 ex1) 
		(exercici ex6) (ultima-dificultat ex6 niv4) (objectiu ex6 niv5) (te-objectiu ex6) 
		(exercici ex7) (ultima-dificultat ex7 niv9) (objectiu ex7 niv10) (te-objectiu ex7)  (te-preparador ex7 dia1) (te-preparador ex7 dia2) (te-preparador ex7 dia3) (te-preparador ex7 dia4) (te-preparador ex7 dia5) (te-preparador ex7 dia6) (te-preparador ex7 dia7) (te-preparador ex7 dia8) (te-preparador ex7 dia9) (te-preparador ex7 dia10) (te-preparador ex7 dia11) (te-preparador ex7 dia12) (te-preparador ex7 dia13) (te-preparador ex7 dia14) (te-preparador ex7 dia15)(preparador ex7 ex0) 
		(exercici ex8) (ultima-dificultat ex8 niv6) 
		(exercici ex9) (ultima-dificultat ex9 niv4) 
		(exercici ex10) (ultima-dificultat ex10 niv10) 
		(exercici ex11) (ultima-dificultat ex11 niv3) 
		(exercici ex12) (ultima-dificultat ex12 niv2) 
		(exercici ex13) (ultima-dificultat ex13 niv2) 
		(exercici ex14) (ultima-dificultat ex14 niv7) (objectiu ex14 niv10) (te-objectiu ex14) 
		(exercici ex15) (ultima-dificultat ex15 niv5) 
		(exercici ex16) (ultima-dificultat ex16 niv6) 
		(exercici ex17) (ultima-dificultat ex17 niv3) 
		(exercici ex18) (ultima-dificultat ex18 niv1) (objectiu ex18 niv7) (te-objectiu ex18) 
		(exercici ex19) (ultima-dificultat ex19 niv10) 
		
		(nObjectius n7)  (nObjectiusDema n7)  (exercicisFets n0)  (incrN n0 n1)  (incrN n1 n2)  (incrN n2 n3)  (incrN n3 n4)  (incrN n4 n5)  (incrN n5 n6)  (incrN n6 n7) )
	(:goal (and (ultima-dificultat ex1 niv9) (ultima-dificultat ex4 niv10) (ultima-dificultat ex5 niv7) (ultima-dificultat ex6 niv5) (ultima-dificultat ex7 niv10) (ultima-dificultat ex14 niv10) (ultima-dificultat ex18 niv7)  (dia-actual dia15)))
)