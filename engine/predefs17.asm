; this function temporarily sets wShowPokedexAnyway
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ld a, 1
	ld [wShowPokedexAnyway], a
	predef ShowPokedexData
	xor a
	ld [wShowPokedexAnyway], a
	ret
