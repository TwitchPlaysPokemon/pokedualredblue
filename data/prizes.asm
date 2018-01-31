PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
IF DEF(_RED)
	db NIDORINA
ENDC
IF DEF(_BLUE)
	db NIDORINO
ENDC
	db CLEFAIRY
	db ABRA
	db "@"

PrizeMenuMon1Cost:
	coins 1200
IF DEF(_RED)
	coins 500
	coins 180
ENDC
IF DEF(_BLUE)
	coins 750
	coins 120
ENDC
	db "@"

PrizeMenuMon2Entries:
	db PORYGON
IF DEF(_RED)
	db SCYTHER
	db DRATINI
ENDC
IF DEF(_BLUE)
	db DRATINI
	db PINSIR
ENDC
	db "@"

PrizeMenuMon2Cost:
IF DEF(_RED)
	coins 9999
	coins 5500
	coins 2800
ENDC
IF DEF(_BLUE)
	coins 6500
	coins 4600
	coins 2500
ENDC
	db "@"

PrizeMenuTMsEntries:
	db TM_50
	db TM_15
	db TM_23
	db "@"

PrizeMenuTMsCost:
	coins 7700
	coins 5500
	coins 3300
	db "@"
