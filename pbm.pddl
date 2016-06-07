(define (problem exs)
	(:domain entrenaminento)
	(:objects 
		dia0 dia1 dia2 dia3 dia4 dia5 dia6 dia7 dia8 dia9 dia10 dia11 dia12 dia13 dia14 dia15 
		niv1 niv2 niv3 niv4 niv5 niv6 niv7 niv8 niv9 niv10 
		ex0 ex1 ex2 ex3 ex4 ex5 ex6 ex7 ex8 ex9 
		num0 num1 num2 num3 
		n0 n1 n2 n3 n4 n5 )
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
		
		(exercici ex0) (ultima-dificultat ex0 niv5) (preparador ex0 ex4)  (te-preparador ex0 dia1 num1) (te-preparador ex0 dia2 num1) (te-preparador ex0 dia3 num1) (te-preparador ex0 dia4 num1) (te-preparador ex0 dia5 num1) (te-preparador ex0 dia6 num1) (te-preparador ex0 dia7 num1) (te-preparador ex0 dia8 num1) (te-preparador ex0 dia9 num1) (te-preparador ex0 dia10 num1) (te-preparador ex0 dia11 num1) (te-preparador ex0 dia12 num1) (te-preparador ex0 dia13 num1) (te-preparador ex0 dia14 num1) (te-preparador ex0 dia15 num1)
		(exercici ex1) (ultima-dificultat ex1 niv9) (objectiu ex1 niv10) (te-objectiu ex1) (preparador ex1 ex8) (preparador ex1 ex6)  (te-preparador ex1 dia1 num2) (te-preparador ex1 dia2 num2) (te-preparador ex1 dia3 num2) (te-preparador ex1 dia4 num2) (te-preparador ex1 dia5 num2) (te-preparador ex1 dia6 num2) (te-preparador ex1 dia7 num2) (te-preparador ex1 dia8 num2) (te-preparador ex1 dia9 num2) (te-preparador ex1 dia10 num2) (te-preparador ex1 dia11 num2) (te-preparador ex1 dia12 num2) (te-preparador ex1 dia13 num2) (te-preparador ex1 dia14 num2) (te-preparador ex1 dia15 num2)
		(exercici ex2) (ultima-dificultat ex2 niv5) (objectiu ex2 niv7) (te-objectiu ex2)  (te-preparador ex2 dia1 num0) (te-preparador ex2 dia2 num0) (te-preparador ex2 dia3 num0) (te-preparador ex2 dia4 num0) (te-preparador ex2 dia5 num0) (te-preparador ex2 dia6 num0) (te-preparador ex2 dia7 num0) (te-preparador ex2 dia8 num0) (te-preparador ex2 dia9 num0) (te-preparador ex2 dia10 num0) (te-preparador ex2 dia11 num0) (te-preparador ex2 dia12 num0) (te-preparador ex2 dia13 num0) (te-preparador ex2 dia14 num0) (te-preparador ex2 dia15 num0)
		(exercici ex3) (ultima-dificultat ex3 niv5) (objectiu ex3 niv6) (te-objectiu ex3) (preparador ex3 ex4) (preparador ex3 ex9)  (te-preparador ex3 dia1 num2) (te-preparador ex3 dia2 num2) (te-preparador ex3 dia3 num2) (te-preparador ex3 dia4 num2) (te-preparador ex3 dia5 num2) (te-preparador ex3 dia6 num2) (te-preparador ex3 dia7 num2) (te-preparador ex3 dia8 num2) (te-preparador ex3 dia9 num2) (te-preparador ex3 dia10 num2) (te-preparador ex3 dia11 num2) (te-preparador ex3 dia12 num2) (te-preparador ex3 dia13 num2) (te-preparador ex3 dia14 num2) (te-preparador ex3 dia15 num2)
		(exercici ex4) (ultima-dificultat ex4 niv1) (objectiu ex4 niv6) (te-objectiu ex4) (preparador ex4 ex5)  (te-preparador ex4 dia1 num1) (te-preparador ex4 dia2 num1) (te-preparador ex4 dia3 num1) (te-preparador ex4 dia4 num1) (te-preparador ex4 dia5 num1) (te-preparador ex4 dia6 num1) (te-preparador ex4 dia7 num1) (te-preparador ex4 dia8 num1) (te-preparador ex4 dia9 num1) (te-preparador ex4 dia10 num1) (te-preparador ex4 dia11 num1) (te-preparador ex4 dia12 num1) (te-preparador ex4 dia13 num1) (te-preparador ex4 dia14 num1) (te-preparador ex4 dia15 num1)
		(exercici ex5) (ultima-dificultat ex5 niv5) (preparador ex5 ex6)  (te-preparador ex5 dia1 num1) (te-preparador ex5 dia2 num1) (te-preparador ex5 dia3 num1) (te-preparador ex5 dia4 num1) (te-preparador ex5 dia5 num1) (te-preparador ex5 dia6 num1) (te-preparador ex5 dia7 num1) (te-preparador ex5 dia8 num1) (te-preparador ex5 dia9 num1) (te-preparador ex5 dia10 num1) (te-preparador ex5 dia11 num1) (te-preparador ex5 dia12 num1) (te-preparador ex5 dia13 num1) (te-preparador ex5 dia14 num1) (te-preparador ex5 dia15 num1)
		(exercici ex6) (ultima-dificultat ex6 niv8) (objectiu ex6 niv9) (te-objectiu ex6) (preparador ex6 ex7) (preparador ex6 ex8)  (te-preparador ex6 dia1 num2) (te-preparador ex6 dia2 num2) (te-preparador ex6 dia3 num2) (te-preparador ex6 dia4 num2) (te-preparador ex6 dia5 num2) (te-preparador ex6 dia6 num2) (te-preparador ex6 dia7 num2) (te-preparador ex6 dia8 num2) (te-preparador ex6 dia9 num2) (te-preparador ex6 dia10 num2) (te-preparador ex6 dia11 num2) (te-preparador ex6 dia12 num2) (te-preparador ex6 dia13 num2) (te-preparador ex6 dia14 num2) (te-preparador ex6 dia15 num2)
		(exercici ex7) (ultima-dificultat ex7 niv9)  (te-preparador ex7 dia1 num0) (te-preparador ex7 dia2 num0) (te-preparador ex7 dia3 num0) (te-preparador ex7 dia4 num0) (te-preparador ex7 dia5 num0) (te-preparador ex7 dia6 num0) (te-preparador ex7 dia7 num0) (te-preparador ex7 dia8 num0) (te-preparador ex7 dia9 num0) (te-preparador ex7 dia10 num0) (te-preparador ex7 dia11 num0) (te-preparador ex7 dia12 num0) (te-preparador ex7 dia13 num0) (te-preparador ex7 dia14 num0) (te-preparador ex7 dia15 num0)
		(exercici ex8) (ultima-dificultat ex8 niv3)  (te-preparador ex8 dia1 num0) (te-preparador ex8 dia2 num0) (te-preparador ex8 dia3 num0) (te-preparador ex8 dia4 num0) (te-preparador ex8 dia5 num0) (te-preparador ex8 dia6 num0) (te-preparador ex8 dia7 num0) (te-preparador ex8 dia8 num0) (te-preparador ex8 dia9 num0) (te-preparador ex8 dia10 num0) (te-preparador ex8 dia11 num0) (te-preparador ex8 dia12 num0) (te-preparador ex8 dia13 num0) (te-preparador ex8 dia14 num0) (te-preparador ex8 dia15 num0)
		(exercici ex9) (ultima-dificultat ex9 niv6)  (te-preparador ex9 dia1 num0) (te-preparador ex9 dia2 num0) (te-preparador ex9 dia3 num0) (te-preparador ex9 dia4 num0) (te-preparador ex9 dia5 num0) (te-preparador ex9 dia6 num0) (te-preparador ex9 dia7 num0) (te-preparador ex9 dia8 num0) (te-preparador ex9 dia9 num0) (te-preparador ex9 dia10 num0) (te-preparador ex9 dia11 num0) (te-preparador ex9 dia12 num0) (te-preparador ex9 dia13 num0) (te-preparador ex9 dia14 num0) (te-preparador ex9 dia15 num0)
		
		 (decrP num1 num0)  (decrP num2 num1)  (decrP num3 num2) 
		(nObjectius n5)  (nObjectiusDema n5)  (exercicisFets n0)  (incrN n0 n1)  (incrN n1 n2)  (incrN n2 n3)  (incrN n3 n4)  (incrN n4 n5) )
	(:goal (and (ultima-dificultat ex1 niv10) (ultima-dificultat ex2 niv7) (ultima-dificultat ex3 niv6) (ultima-dificultat ex4 niv6) (ultima-dificultat ex6 niv9)  (dia-actual dia15)))
)