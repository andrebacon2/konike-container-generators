@ECHO off
CD %~dp0

ECHO Welcome to the Konike Container Generator Scripts!
ECHO Created by Andre Pieters 2022
PAUSE

SET /p containerNum=Container Number? 
SET container=Container
SET fileName=%container%%containerNum%

MKDIR "%fileName%"

SET /p runNext=Run next generator? (y/n) 

IF %runNext% EQU Y START ContainerGenerator.bat %containerNum%
IF %runNext% EQU y START ContainerGenerator.bat %containerNum%

EXIT