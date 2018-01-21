StartGymLeaderRematch::
	ld hl, RematchStartText
	call PrintText
    xor a
    ld [wGymLeaderRematch], a ;disable further rematches
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, RematchYouWinText
	ld de, RematchYouLoseText
	call SaveEndBattleTextPointers
    ret

ShowHideGymLeaderGiovanni::
	CheckRematch $8
    jr nz, .no_rematch
    ld a, HS_VIRIDIAN_GYM_GIOVANNI
	ld [wMissableObjectIndex], a
	predef ShowObject
    jr .done
.no_rematch
	CheckEvent EVENT_GOT_TM27
	jr z, .done
    ld a, HS_VIRIDIAN_GYM_GIOVANNI
	ld [wMissableObjectIndex], a
	predef HideObject
.done
    ret

RematchStartText:
	text "Oh, do you want"
	line "a rematch?"

	para "Very well, but I"
	line "won't go easy!"
	done

RematchYouWinText:
	text "Wow!"

    para "Another great"
	line "performance!"
	prompt

RematchYouLoseText:
	text "Ouch!"

    para "That was"
	line "unfortunate."

    para "Come back and try"
    line "again in 8 hours."
	prompt