RedsHouse1FScript:
	jp EnableAutoTextBoxDrawing
	call EnableAutoTextBoxDrawing
	ld de, RedsHouse1FScriptPointers
	ld a, [wRedsHouse1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRedsHouse1FCurScript], a
 	ret

RedsHouse1FScriptPointers:
	dw FinishChiefBattle

RedsHouse1FTextPointers:
	dw RedsHouse1FText1
	dw RedsHouse1FText2
	dw RedsHouse1FText3

RedsHouse1FText1: ; Mom
	TX_ASM
	ld a, [wd72e]
	bit 3, a
	jr nz, .heal ; if player has received a Pokémon from Oak, heal team
	ld hl, MomWakeUpText
	call PrintText
	jr .done
.heal
	call MomHealPokemon
.done
	jp TextScriptEnd

MomWakeUpText:
	TX_FAR _MomWakeUpText
	db "@"

MomHealPokemon:
	ld hl, MomHealText1
	call PrintText
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
	ld [wNewSoundID], a
	call PlaySound
.next
	ld a, [wChannelSoundIDs]
	cp MUSIC_PKMN_HEALED
	jr z, .next
	ld a, [wMapMusicSoundID]
	ld [wNewSoundID], a
	call PlaySound
	call GBFadeInFromWhite
	ld hl, MomHealText2
	jp PrintText

MomHealText1:
	TX_FAR _MomHealText1
	db "@"
MomHealText2:
	TX_FAR _MomHealText2
	db "@"

RedsHouse1FText2: ; TV
	TX_ASM
	ld a,[wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	ld hl,TVWrongSideText
	jr nz,.notUp
	ld hl,StandByMeText
.notUp
	call PrintText
	jp TextScriptEnd

StandByMeText:
	TX_FAR _StandByMeText
	db "@"

TVWrongSideText:
	TX_FAR _TVWrongSideText
	db "@"

RedsHouse1FText3: ; Red
	TX_ASM
	CheckEvent EVENT_BEAT_CHIEF
	jp nz, FinishChiefBattle
	ld hl, ChiefIntroduce
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, ChiefBattleEnd
	ld de, ChiefBattleEnd
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	xor a
	ld [hJoyHeld], a
	ld a, $0
	ld [wCurMapScript], a
	ld [wRedsHouse1FCurScript], a
	jp TextScriptEnd

FinishChiefBattle::
	ld a, [wIsInBattle]
	cp $ff
	jp z, .waitForEnd
	ld a, $f0
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_CHIEF
	ld hl, ChiefBattleOver
	call PrintText
.waitForEnd
	xor a
	ld [wJoyIgnore], a
	ld [wPewterGymCurScript], a
	ld [wCurMapScript], a
	ret

ChiefIntroduce::
	TX_FAR _ChiefIntroduce
	db "@"

ChiefBattleOver::
	TX_FAR _ChiefBattleOver
	db "@"

ChiefBattleEnd::
	TX_FAR _ChiefBattleEnd
	db "@"