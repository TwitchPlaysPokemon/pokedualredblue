_MomWakeUpText::
	text "MOM: Right."
IF DEF(_RED)	
	line "All boys leave"
ENDC
IF DEF(_BLUE)	
	line "All kids leave"
ENDC
	cont "home some day."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

_MomHealText1::
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

_MomHealText2::
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

_StandByMeText::
	text "There's a movie"
IF DEF(_RED)	
	line "on TV. Four boys"
ENDC
IF DEF(_BLUE)	
	line "on TV. Four kids"
ENDC
	cont "are walking on"
	cont "railroad tracks."

	para "I better go too."
	done

_TVWrongSideText::
	text "Oops, wrong side."
	done
