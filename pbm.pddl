(define (problem exs)
	(:domain entrenaminento)
	(:objects 
		dia0 dia1 dia2 dia3 dia4 dia5 dia6 dia7 dia8 dia9 dia10 dia11 dia12 dia13 dia14 dia15 
		niv1 niv2 niv3 niv4 niv5 niv6 niv7 niv8 niv9 niv10 
		ex0 ex1 ex2 ex3 ex4 
		num0 num1 num2 num3 num4 
		n0 n1 n2 n3 )
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
		
		(exercici ex0) (ultima-dificultat ex0 niv8) (objectiu ex0 niv9) (te-objectiu ex0) (preparador ex0 ex3)  (te-preparador ex0 dia1 num1) (te-preparador ex0 dia2 num1) (te-preparador ex0 dia3 num1) (te-preparador ex0 dia4 num1) (te-preparador ex0 dia5 num1) (te-preparador ex0 dia6 num1) (te-preparador ex0 dia7 num1) (te-preparador ex0 dia8 num1) (te-preparador ex0 dia9 num1) (te-preparador ex0 dia10 num1) (te-preparador ex0 dia11 num1) (te-preparador ex0 dia12 num1) (te-preparador ex0 dia13 num1) (te-preparador ex0 dia14 num1) (te-preparador ex0 dia15 num1)
		(exercici ex1) (ultima-dificultat ex1 niv6) (objectiu ex1 niv9) (te-objectiu ex1) (preparador ex1 ex4) (preparador ex1 ex2)  (te-preparador ex1 dia1 num2) (te-preparador ex1 dia2 num2) (te-preparador ex1 dia3 num2) (te-preparador ex1 dia4 num2) (te-preparador ex1 dia5 num2) (te-preparador ex1 dia6 num2) (te-preparador ex1 dia7 num2) (te-preparador ex1 dia8 num2) (te-preparador ex1 dia9 num2) (te-preparador ex1 dia10 num2) (te-preparador ex1 dia11 num2) (te-preparador ex1 dia12 num2) (te-preparador ex1 dia13 num2) (te-preparador ex1 dia14 num2) (te-preparador ex1 dia15 num2)
		(exercici ex2) (ultima-dificultat ex2 niv2) (objectiu ex2 niv10) (te-objectiu ex2)  (te-preparador ex2 dia1 num0) (te-preparador ex2 dia2 num0) (te-preparador ex2 dia3 num0) (te-preparador ex2 dia4 num0) (te-preparador ex2 dia5 num0) (te-preparador ex2 dia6 num0) (te-preparador ex2 dia7 num0) (te-preparador ex2 dia8 num0) (te-preparador ex2 dia9 num0) (te-preparador ex2 dia10 num0) (te-preparador ex2 dia11 num0) (te-preparador ex2 dia12 num0) (te-preparador ex2 dia13 num0) (te-preparador ex2 dia14 num0) (te-preparador ex2 dia15 num0)
		(exercici ex3) (ultima-dificultat ex3 niv2)  (te-preparador ex3 dia1 num0) (te-preparador ex3 dia2 num0) (te-preparador ex3 dia3 num0) (te-preparador ex3 dia4 num0) (te-preparador ex3 dia5 num0) (te-preparador ex3 dia6 num0) (te-preparador ex3 dia7 num0) (te-preparador ex3 dia8 num0) (te-preparador ex3 dia9 num0) (te-preparador ex3 dia10 num0) (te-preparador ex3 dia11 num0) (te-preparador ex3 dia12 num0) (te-preparador ex3 dia13 num0) (te-preparador ex3 dia14 num0) (te-preparador ex3 dia15 num0)
		(exercici ex4) (ultima-dificultat ex4 niv3)  (te-preparador ex4 dia1 num0) (te-preparador ex4 dia2 num0) (te-preparador ex4 dia3 num0) (te-preparador ex4 dia4 num0) (te-preparador ex4 dia5 num0) (te-preparador ex4 dia6 num0) (te-preparador ex4 dia7 num0) (te-preparador ex4 dia8 num0) (te-preparador ex4 dia9 num0) (te-preparador ex4 dia10 num0) (te-preparador ex4 dia11 num0) (te-preparador ex4 dia12 num0) (te-preparador ex4 dia13 num0) (te-preparador ex4 dia14 num0) (te-preparador ex4 dia15 num0)
		
		 (decrP num1 num0)  (decrP num2 num1)  (decrP num3 num2)  (decrP num4 num3) 
		(nObjectius n3)  (nObjectiusDema n3)  (exercicisFets n0)  (incrN n0 n1)  (incrN n1 n2)  (incrN n2 n3) )
	(:goal (and (ultima-dificultat ex0 niv9) (ultima-dificultat ex1 niv9) (ultima-dificultat ex2 niv10)  (dia-actual dia15)))
)