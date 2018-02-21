LoadWildData:
	ld hl, WildDataPointers
	ld a, [wCurMap]

	;get wild data for current map
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a ;hl now points to wild data for current map
	ld a, [hli]
	ld [wGrassRate], a
	ld de, wGrassMons
	call .do_copy
	ld a, [hli]
	ld [wWaterRate], a
	ld de, wWaterMons
.do_copy
	ld bc, 20
	and a
	jr z, .no_data
	push bc
	push hl
	call CopyData
	pop hl
	pop bc
	add hl, bc
	ret

.no_data
	ld [de], a
	inc de
	dec c
	jr nz, .no_data
	ret

INCLUDE "data/wild_mons.asm"
