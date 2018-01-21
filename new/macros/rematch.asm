; z if gym leader is available for rematch
;\1 = gym number
CheckRematch: MACRO
	ld a, [wGymLeaderRematch]
	cp a, \1
	ENDM

; checks if gym leader is available for rematch, and if so, starts the rematch
;\1 = gym number
TryRematch: MACRO
	CheckRematch \1
	jr nz, .not_rematch
	callab StartGymLeaderRematch
	jr .start_battle
.not_rematch
    ENDM