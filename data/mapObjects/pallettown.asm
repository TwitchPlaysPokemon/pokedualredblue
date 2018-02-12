PalletTownObject:
	db $b ; border block

	db $3 ; warps
	IF DEF(_RED)
		db $5, $d, $0, REDS_HOUSE_1F
		db $5, $5, $0, BLUES_HOUSE
	ENDC
	IF DEF(_BLUE)
		db $5, $5, $0, REDS_HOUSE_1F
		db $5, $d, $0, BLUES_HOUSE
	ENDC
	db $b, $c, $1, OAKS_LAB

	db $4 ; signs
	db $d, $d, $4 ; PalletTownText4
	db $9, $7, $5 ; PalletTownText5
	IF DEF(_RED)
		db $5, $b, $6 ; PalletTownText6
		db $5, $3, $7 ; PalletTownText7
	ENDC
	IF DEF(_BLUE)
		db $5, $3, $6 ; PalletTownText6
		db $5, $b, $7 ; PalletTownText7
	ENDC

	db $3 ; objects
	object SPRITE_OAK, $8, $5, STAY, NONE, $1 ; person
	object SPRITE_GIRL, $3, $8, WALK, $0, $2 ; person
	object SPRITE_FISHER2, $b, $e, WALK, $0, $3 ; person

	; warp-to
	IF DEF(_RED)
		EVENT_DISP PALLET_TOWN_WIDTH, $5, $d ; REDS_HOUSE_1F
		EVENT_DISP PALLET_TOWN_WIDTH, $5, $5 ; BLUES_HOUSE
	ENDC
	IF DEF(_BLUE)
		EVENT_DISP PALLET_TOWN_WIDTH, $5, $5 ; REDS_HOUSE_1F
		EVENT_DISP PALLET_TOWN_WIDTH, $5, $d ; BLUES_HOUSE
	ENDC
	EVENT_DISP PALLET_TOWN_WIDTH, $b, $c ; OAKS_LAB
