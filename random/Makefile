
mersenne: generators/mersenne.stanza 
	stanza generators/mersenne.stanza -o mersenne

mersenne_constants: generators/mersenne_constants.c
	gcc -o mersenne_constants generators/mersenne_constants.c

test_sqrt: math/math.stanza math/test.stanza
	stanza math/math.stanza math/test.stanza -o test_sqrt
