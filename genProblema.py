#!/usr/bin/python

from sets import Set
import random

objects = ''
init = ''
setOps = Set([])

dies = ['','']
for i in range(1,16):
	d = 'dia' + str(i)
	dies[0] += d + ' '
	op = '(dia'
	dies[1] += op + ' ' + d + ') '
	setOps.add(op+' ?x)')
	if i > 1:
		op = '(dia-seguent'
		dies[1] += op + ' dia' + str(i-1) + ' dia' + str(i) + ') '
		setOps.add(op+' ?x ?y)')
objects += '\n\t' + dies[0]
init += '\n\t' + dies[1]

difi = ['','']
for i in range(1,11):
	n = 'niv' + str(i)
	difi[0] += n + ' '
	op = '(dificultat'
	dies[1] += op + ' ' + n + ') '
	setOps.add(op+' ?x)')
	if i > 1:
		op = '(dif-seguent'
		difi[1] += op + ' niv' + str(i-1) + ' niv' + str(i) + ') '
		setOps.add(op+' ?x ?y)')
objects += '\n\t' + difi[0]
init += '\n\t' + difi[1]

ex = ['','']
ex_rel = {}
nex = int(raw_input('nombre d\'exercicis: '))
npred = 0
nprep = 1
for i in range(0,nex):
	nom = 'ex' + str(i)
	ex[0] += nom + ' '
	op = '(exercici'
	dies[1] += op + ' ' + nom + ') '
	setOps.add(op+' ?x)')
	dificultat = random.randint(1,10)
	op = '(ultima-dificultat'
	ex[1] += op + ' ' + nom + ' niv' + str(dificultat) + ') '
	setOps.add(op+' ?x ?y)')
	objectiu = random.randint(dificultat,10)
	op = '(objectiu'
	ex[1] += op + ' ' + nom + ' niv' + str(objectiu) + ') '
	setOps.add(op+' ?x ?y)')
	ex_rel[nom] = [[],[]]
	npredi = random.randint(0,npred)
	nprepi = random.randint(0,nprep)
	for j in range(0,npredi):
		p = 'ex'+str(random.randint(0,nex))
		while (p in ex_rel.keys() and (nom in ex_rel[p][0] or nom in ex_rel[p][1])):
			p = 'ex'+str(str(random.randint(0,nex)))
		ex_rel[nom][0].append(p)
		op = '(predecessor'
		ex[1] += op + nom + p + ') '
		setOps.add(op+' ?x ?y)')
	for j in range(0,nprepi):
		p = 'ex'+str(random.randint(0,nex))
		while (p in ex_rel.keys() and (nom in ex_rel[p][0] or nom in ex_rel[p][1])):
			p = 'ex'+str(random.randint(0,nex))
		ex_rel[nom][1].append(p)
		op = '(preparador'
		ex[1] += op + ' ' + nom + ' ' + p + ') '
		setOps.add(op+' ?x ?y)')
objects += '\n\t' + ex[0]
init += '\n\t' + ex[1]

print objects
print init
for s in setOps: print s

f = open('pbm.pddl','w')
f.write('(define (problem exs)\n\t(:domain entrenaminento)\n\t(:objects ')
f.write(objects+')')
f.write('\n\t(:init ')
f.write(init+')')
f.write('\n\t(:goal '+')\n)')
f.close()

f = open('predicates.txt','w')
for s in setOps: print f.write(s+'\n')
