STANZA_DIR := /home/scott/repos/lbstanza/compiler
THIS_DIR := /home/scott/repos/doggerel/examples

myprog: myprog.stanza exstanza
	$(THIS_DIR)/exstanza myprog.stanza -o myprog

exstanza: mymacros.stanza
	stanza mymacros.stanza $(STANZA_DIR)/stz-main.stanza -o exstanza

overload: overload.stanza
	stanza overload.stanza -o overload

sqrt: sqrt.stanza
	stanza sqrt.stanza -o sqrt

subtyping: subtyping.stanza
	stanza subtyping.stanza -o subtyping

iterating: iterating.stanza
	stanza iterating.stanza -o iterating

questions: questions.stanza
	stanza questions.stanza -o questions

max_subsum: max_subsum.stanza
	stanza max_subsum.stanza -o max_subsum

stack: stack.stanza
	stanza stack.stanza -o stack
