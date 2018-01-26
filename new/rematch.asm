StartGymLeaderRematch::
    ld hl, RematchStartTextPointers
	call LoadRematchText
	call PrintText
    xor a
    ld [wGymLeaderRematch], a ;disable further rematches
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
    ld hl, RematchLoseTextPointers
	call LoadRematchText
	ld d, h
    ld e, l
	ld hl, RematchWinTextPointers
    call LoadRematchText
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

; gets the address of the text
; pointed to by the pointer table in hl
; and leaves it in hl
LoadRematchText:
	ld a, [wGymLeaderNo]
	sla a ; no need for carry check, GymLeaderNo shouldn't be over 8
	add l
    ld l, a
    jr nc, .noCarry
    inc h
.noCarry
    ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

RematchStartTextPointers:
	dw GenericRematchStartText
	dw BrockRematchStartText
	dw MistyRematchStartText
	dw SurgeRematchStartText
	dw ErikaRematchStartText
	dw KogaRematchStartText
	dw SabrinaRematchStartText
	dw BlaineRematchStartText
	dw GiovanniRematchStartText

RematchWinTextPointers:
	dw GenericRematchYouWinText
	dw BrockRematchYouWinText
	dw MistyRematchYouWinText
	dw SurgeRematchYouWinText
	dw ErikaRematchYouWinText
	dw KogaRematchYouWinText
	dw SabrinaRematchYouWinText
	dw BlaineRematchYouWinText
	dw GiovanniRematchYouWinText

RematchLoseTextPointers:
	dw GenericRematchYouLoseText
	dw BrockRematchYouLoseText
	dw MistyRematchYouLoseText
	dw SurgeRematchYouLoseText
	dw ErikaRematchYouLoseText
	dw KogaRematchYouLoseText
	dw SabrinaRematchYouLoseText
	dw BlaineRematchYouLoseText
	dw GiovanniRematchYouLoseText

GenericRematchStartText:
	text "Oh, do you want"
	line "a rematch?"

	para "Very well, but I"
	line "won't go easy!"
	done

GenericRematchYouWinText:
	text "Wow!"

    para "Another great"
	line "performance!"
	prompt

GenericRematchYouLoseText:
	text "Ouch!"

    para "That was"
	line "unfortunate."

    para "You'll have to try"
    line "harder next time."
	prompt

BrockRematchStartText:
    text "You're back!"
    line "Somehow I knew"
    cont "you would be."
    
    para "Let me see how"
    line "your abilities"
    cont "have progressed."

    para "Show me your best!"
	done
    
BrockRematchYouWinText:
    text "Even"
    line "after all this"
    cont "time, I still"
	cont "took you for"
    cont "granted!"
	prompt

BrockRematchYouLoseText:
    text "You"
    line "didn't stand a"
	cont "chance against"
    cont "my rock hard"
    cont "defense!"
	prompt
    

MistyRematchStartText:
    text "Hi <PLAYER>!"
    line "Nice to see a"
    cont "familiar face!"
    
    para "Has your #MON"
    line "policy improved?"
	done
    
MistyRematchYouWinText:
    text "You"
	line "are still too"
    cont "much for me!"
    
    para "You're a real"
    line "pro trainer!"
	prompt
    
MistyRematchYouLoseText:
    text "I"
	line "knew first time"
    cont "was a fluke!"
    
    para "You can't handle"
    line "my all-out"
    cont "offensive!"
	prompt
    
SurgeRematchStartText:
    text "Hey, the kid is"
    line "back!"
    
    para "Let's see if your"
    line "combat skills"
    cont "have improved!"
	done
    
    
SurgeRematchYouWinText:
    text "Woah!"
	line "You're still the"
    cont "real deal, kid!"
	prompt
    
SurgeRematchYouLoseText:
    text "Hah!"
	line "And I thought you"
    cont "were special!"
	prompt

ErikaRematchStartText:
    text "Oh, hello..."
    
    para "Do I know you?"
	done
    
ErikaRematchYouWinText:  
    text "I"
	line "think I may"
    cont "remember you..."
    
    para "Lovely weather,"
    line "isn't it?"
	prompt
    
ErikaRematchYouLoseText:
    text "No,"
    line "perhaps not..."
	prompt
    
KogaRematchStartText:
    text "Fwahahaha!"
    
    para "You think you"
    line "can best a ninja"
    cont "master once again?"
	done
    
KogaRematchYouWinText:
    text "Once"
	line "again, you have"
    cont "proven your"
    cont "worth."
	prompt
    
KogaRematchYouLoseText:   
	text "Tch-"

    para "Fwahahaha!"
    
    para "We train to"
    line "confuse our"
    cont "enemies!"
	prompt
    
SabrinaRematchStartText:
    text "I foresaw your"
    line "arrival again."
    
    para "I already told"
    line "you, I dislike"
    cont "fighting..."
	done
    
SabrinaRematchYouWinText:
    text "Just"
	line "as I foresaw!"
	prompt
    
SabrinaRematchYouLoseText:
    text "It"
    line "seems you didn't"
    cont "foresee this"
	cont "outcome!"
	prompt

BlaineRematchStartText:
    text "Hah!"
    
    para "I'm all fired"
    line "up and raring to"
    cont "go!"
    
    para "Do you still have"
    line "BURN HEAL?"
	done
    
BlaineRematchYouWinText:
    text "Burnt"
	line "out again!"
	prompt
    
BlaineRematchYouLoseText:
    text "Hah!"
    
    para "That's a real"
    line "burn!"
	prompt

GiovanniRematchStartText:
    text "Ah, <PLAYER>!"
    line "We meet once"
    cont "again."
    
    para "This time I will"
    line "destroy you!"
	done
    
GiovanniRematchYouWinText:
    text "NO!"
    
    para "I just don't"
    line "understand!"
	prompt
    
GiovanniRematchYouLoseText:
    text "Hah!"
    
    para "Perhaps I should"
    line "consider a"
    cont "revival of TEAM"
    cont "ROCKET!"
	prompt