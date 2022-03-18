@ECHO off
SET cdFile=Container%1
CD %~dp0/%cdFile%
ECHO [ > ContainerContents.json
GOTO ASK

:ASK
	SET /p itemType=Insert item name (case sensitive), or leave the field blank to quit 
	IF %itemType%=Small Battery GOTO SMALL_BATTERY
	IF %itemType%=Small Battery GOTO MEDIUM_BATTERY
	IF %itemType%=Small Battery GOTO LARGE_BATTERY

:SMALL_BATTERY
	ECHO , >> ContainerContents.json
	ECHO { >> ContainerContents.json
	ECHO 	"itemType": "SMALL_BATTERY", >> ContainerContents.json
	ECHO 	"abilities": [ >> ContainerContents.json
	ECHO 		"BATTERY" >> ContainerContents.json
	ECHO 	], >> ContainerContents.json
	ECHO 	"extra": 5, >> ContainerContents.json
	ECHO 	"nokaPona": true, >> ContainerContents.json
	ECHO 	"pos": {}, >> ContainerContents.json
	ECHO 	"itemSprite": "/StorableSprites/DefaultItem.png", >> ContainerContents.json
	ECHO 	"itemIcon": "/StorableSprites/SmallBatteryIcon.png", >> ContainerContents.json
	ECHO 	"aniQ": {}, >> ContainerContents.json
	ECHO } >> ContainerContents.json
	
:MEDIUM_BATTERY
	ECHO , >> ContainerContents.json
	ECHO { >> ContainerContents.json
	ECHO 	"itemType": "MEDIUM_BATTERY", >> ContainerContents.json
	ECHO 	"abilities": [ >> ContainerContents.json
	ECHO 		"BATTERY" >> ContainerContents.json
	ECHO 	], >> ContainerContents.json
	ECHO 	"extra": 10, >> ContainerContents.json
	ECHO 	"nokaPona": true, >> ContainerContents.json
	ECHO 	"pos": {}, >> ContainerContents.json
	ECHO 	"itemSprite": "/StorableSprites/DefaultItem.png", >> ContainerContents.json
	ECHO 	"itemIcon": "/StorableSprites/MediumBatteryIcon.png", >> ContainerContents.json
	ECHO 	"aniQ": {}, >> ContainerContents.json
	ECHO } >> ContainerContents.json
	
:LARGE_BATTERY
	ECHO , >> ContainerContents.json
	ECHO { >> ContainerContents.json
	ECHO 	"itemType": "LARGE_BATTERY", >> ContainerContents.json
	ECHO 	"abilities": [ >> ContainerContents.json
	ECHO 		"BATTERY" >> ContainerContents.json
	ECHO 	], >> ContainerContents.json
	ECHO 	"extra": 20, >> ContainerContents.json
	ECHO 	"nokaPona": true, >> ContainerContents.json
	ECHO 	"pos": {}, >> ContainerContents.json
	ECHO 	"itemSprite": "/StorableSprites/DefaultItem.png", >> ContainerContents.json
	ECHO 	"itemIcon": "/StorableSprites/LargeBatteryIcon.png", >> ContainerContents.json
	ECHO 	"aniQ": {}, >> ContainerContents.json
	ECHO } >> ContainerContents.json

SET /p runNext=Run next generator? (y/n) 
CD ..

IF %runNext% EQU Y SET /p nextApp=Run quick creator? (y/n)
IF %runNext% EQU Y SET /p nextApp=Run quick creator? (y/n)

IF %runNext% EQU y START ContainerContentGenerator.bat %1
IF %runNext% EQU y START ContainerContentGenerator.bat %1

EXIT