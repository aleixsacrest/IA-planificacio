#!/usr/bin/python

from sets import Set
import random

objects = ''
init = ''
goal = ''
setOps = Set([])

dies = ['','']
dies[1] += '\t(dia dia0) (dia-actual dia0)\n'
dies[0] += '\t\tdia0 '
for i in range(1,16):
	d = 'dia' + str(i)
	dies[0] += d + ' '
	op = '(dia'
	dies[1] += '\t\t' + op + ' ' + d + ') '
	setOps.add(op+' ?x)')
	if i > 0:
		op = '(dia-seguent'
		dies[1] += op + ' dia' + str(i-1) + ' dia' + str(i) + ')\n'
		setOps.add(op+' ?x ?y)')
objects += '\n' + dies[0]
init += '\n\t' + dies[1]

difi = ['','']
for i in range(1,11):
	n = 'niv' + str(i)
	difi[0] += n + ' '
	op = '(dificultat'
	difi[1] += op + ' ' + n + ') '
	setOps.add(op+' ?x)')
	if i > 1:
		op = '(dif-seguent'
		difi[1] += op + ' niv' + str(i-1) + ' niv' + str(i) + ') '
		setOps.add(op+' ?x ?y)')
	difi[1] += '\n\t\t'
objects += '\n\t\t' + difi[0]
init += '\n\t\t' + difi[1]

ex = ['','', '']
ex_rel = {}
nex = int(raw_input('nombre d\'exercicis: '))
npred = 0
nprep = 1
nobjsdia = 0
for i in range(0,nex):
	nom = 'ex' + str(i)
	ex[0] += nom + ' '
	op = '(exercici'
	ex[1] += op + ' ' + nom + ') '
	setOps.add(op+' ?x)')
	dificultat = random.randint(1,10)
	op = '(ultima-dificultat'
	ex[1] += op + ' ' + nom + ' niv' + str(dificultat) + ') '
	setOps.add(op+' ?x ?y)')
	if random.randint(1,3) == 1:
		nobjsdia += 1
		objectiu = random.randint(dificultat,10)
		ex[2] 	+= op + ' ' + nom + ' niv' + str(objectiu) + ') '
		op = '(objectiu'
		ex[1] += op + ' ' + nom + ' niv' + str(objectiu) + ') '
		setOps.add(op+' ?x ?y)')
		op = '(te-objectiu'
		ex[1] += op + ' ' + nom + ') '
		setOps.add(op+' ?x)')
	ex_rel[nom] = [[],[]] #[0]-> predecessors [1]-> preparadors
	npredi = random.randint(0,npred)
	nprepi = random.randint(0,nprep)
	tepred = False
	teprep = False
	for j in range(0,npredi):
		if not tepred:
			for d in dies[0].split(' '): ex[1] += ' (te-predecessor ' + nom + ' ' + d + ')'
			tepred = True
		p = 'ex'+str(random.randint(0,nex))
		while (p in ex_rel.keys() and (nom in ex_rel[p][0] or nom in ex_rel[p][1])):
			p = 'ex'+str(str(random.randint(0,nex)))
		ex_rel[nom][0].append(p)
		op = '(predecessor'
		ex[1] += op + nom + p + ') '
		setOps.add(op+' ?x ?y)')
	for j in range(0,nprepi):
		if not teprep:
			for d in dies[0].split(' ')[1:16]: ex[1] += ' (te-preparador ' + nom + ' ' + d + ')'
			tepred = True
		p = 'ex'+str(random.randint(0,nex))
		while (p in ex_rel.keys() and (nom in ex_rel[p][0] or nom in ex_rel[p][1])):
			p = 'ex'+str(random.randint(0,nex))
		ex_rel[nom][1].append(p)
		op = '(preparador'
		ex[1] += op + ' ' + nom + ' ' + p + ') '
		setOps.add(op+' ?x ?y)')
	ex[1] += '\n\t\t'

op = '(nObjectius'
ex[1] += '\n\t\t' +op + ' n' + str(nobjsdia) + ') '
setOps.add(op+' ?x)')
op = ' (nObjectiusDema'
ex[1] += op + ' n' + str(nobjsdia) + ') '
setOps.add(op+' ?x)')
for i in range(0,nobjsdia):
	op = '(incrN'
	ex[1] += ' ' + op + ' n' + str(i) + ' n' + str(i+1) + ') '
	setOps.add(op+' ?x ?y)')

objects += '\n\t\t' + ex[0]
init += '\n\t\t' + ex[1]
objects += '\n\t\t'
for i in range(0,nobjsdia+1):
	objects += 'n' + str(i) + ' '
goal += ex[2]

#print objects
#print init
#for s in setOps: print s

f = open('pbm.pddl','w')
f.write('(define (problem exs)\n\t(:domain entrenaminento)\n\t(:objects ')
f.write(objects+')')
f.write('\n\t(:init ')
f.write(init+')')
f.write('\n\t(:goal (and '+goal+' (dia-actual dia15)))\n)')
f.close()

f = open('predicates.txt','w')
for s in setOps: f.write(s+'\n')
