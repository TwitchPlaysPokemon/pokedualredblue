ZoneMons3:
	db $1E
	IF DEF(_RED)
		db 25,RHYHORN
		db 30,NIDORINO
		db 30,ELECTABUZZ
		db 28,VENOMOTH
		db 28,KANGASKHAN
		db 23,SCYTHER
		db 32,VILEPLUME
		db 28,VENOMOTH
		db 25,SCYTHER
		db 30,VILEPLUME
	ENDC
	IF DEF(_BLUE)
		db 25,EXEGGCUTE
		db 30,NIDORINA
		db 30,MAGMAR
		db 28,TANGELA
		db 28,KANGASKHAN
		db 23,PINSIR
		db 32,EXEGGUTOR
		db 28,TANGELA
		db 25,PINSIR
		db 30,EXEGGUTOR
	ENDC
	db $05
	db 15,DRATINI
	db 15,DRATINI
	db 10,DRATINI
	db 15,DRATINI
	db 10,DRATINI
	db 15,DRATINI
	db 20,DRAGONAIR
	db 25,DRAGONAIR
	db 20,DRAGONAIR
	db 30,DRAGONAIR	