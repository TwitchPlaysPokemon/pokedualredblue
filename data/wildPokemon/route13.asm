Route13Mons:
	IF DEF(_RED)
		db $14
		db 24,GLOOM
		db 25,LICKITUNG
		db 27,MR_MIME
		db 24,VAPOREON
		db 22,FLAREON
		db 26,JOLTEON
		db 26,CHANSEY
		db 25,VILEPLUME
		db 28,VILEPLUME
		db 30,VILEPLUME
	ENDC
	IF DEF(_BLUE)
		db $14
		db 24,WEEPINBELL
		db 25,FARFETCHD
		db 27,MR_MIME
		db 24,VAPOREON
		db 22,FLAREON
		db 26,JOLTEON
		db 26,CHANSEY
		db 25,VICTREEBEL
		db 28,VICTREEBEL
		db 30,VICTREEBEL
	ENDC
	db $05
	db 25,POLIWHIRL
	db 26,SEAKING
	db 22,GOLDEEN
	db 23,POLIWHIRL
	db 22,SEAKING
	db 23,GOLDEEN
	db 20,GOLDEEN
	db 20,TENTACOOL
	db 22,TENTACOOL
	db 21,TENTACOOL