DungeonMonsB1:
	db $19
	db 55,RHYDON
	db 55,MAROWAK
	db 55,ELECTRODE
	IF DEF(_RED)
		db 64,HITMONCHAN
	ENDC
	IF DEF(_BLUE)
		db 64,HITMONLEE
	ENDC
	db 64,PARASECT
	db 64,DRAGONITE
	IF DEF(_RED)
		db 57,ARBOK
	ENDC
	IF DEF(_BLUE)
		db 57,SANDSLASH
	ENDC
	db 65,SNORLAX
	db 63,SNORLAX
	db 67,SNORLAX
	db $05
		IF DEF(_RED)
		db 52,SEADRA
		db 50,CLOYSTER
		db 49,SLOWBRO
		db 55,OMASTAR
		db 53,OMASTAR
		db 48,POLIWRATH
		db 51,POLIWRATH
		db 56,TENTACRUEL
		db 58,TENTACRUEL
		db 60,TENTACRUEL
	ENDC
	IF DEF(_BLUE)
		db 52,KINGLER
		db 50,STARMIE
		db 49,GOLDUCK
		db 55,KABUTOPS
		db 53,KABUTOPS
		db 48,POLIWRATH
		db 51,POLIWRATH
		db 56,TENTACRUEL
		db 58,TENTACRUEL
		db 60,TENTACRUEL
	ENDC