Lab4Object:
	db $17 ; border block

	db $2 ; warps
	db $7, $2, $4, CINNABAR_LAB_1
	db $7, $3, $4, CINNABAR_LAB_1

	db $4 ; signs
	db $4, $0, $3 ; Lab4Text
	db $4, $1, $4 ; Lab4Text4
	db $4, $2, $3 ; Lab4Text3
	db $4, $3, $4 ; Lab4Text4


	db $2 ; objects
	object SPRITE_OAK_AIDE, $7, $2, STAY, LEFT, $1 ; person
	object SPRITE_OAK_AIDE, $7, $6, STAY, UP, $2 ; person

	; warp-to
	EVENT_DISP CINNABAR_LAB_4_WIDTH, $7, $2 ; CINNABAR_LAB_1
	EVENT_DISP CINNABAR_LAB_4_WIDTH, $7, $3 ; CINNABAR_LAB_1
