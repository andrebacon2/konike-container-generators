@ECHO off

SET cdFile=Container%1

CD %~dp0/%cdFile%

SET /p impassable=Impassable (true/false)? 
SET /p column=Column? 
SET /p row=Row? 
SET /p name=Name? 
SET /p invenSize=Inventory Size? 
SET /p sprite=Sprite (Only the last section)? 

ECHO { > Container.json
ECHO 	"impassable": %impassable%, >> Container.json
ECHO 	"pos": { >> Container.json
ECHO 		"column": %column% >> Container.json
ECHO 		"row": %row% >> Container.json
ECHO 	}, >> Container.json
ECHO 	"stats": [], >> Container.json
ECHO 	"inventory": [], >> Container.json
ECHO 	"aniQ": {}, >> Container.json
ECHO 	"name": "%name%", >> Container.json
ECHO 	"inventorySize": %invenSize%, >> Container.json
ECHO 	"activeSprite": "/ContainerSprites/%sprite%", >> Container.json
ECHO } >> Container.json

SET /p runNext=Run next generator? (y/n) 
CD ..

IF %runNext% EQU Y SET /p nextApp=Run quick creator? (y/n)
IF %runNext% EQU Y SET /p nextApp=Run quick creator? (y/n)

IF %runNext% EQU y START ContainerContentGeneratorEasy.bat %1
IF %runNext% EQU y START ContainerContentGeneratorEasy.bat %1

EXIT