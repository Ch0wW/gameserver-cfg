:: Number of additionnal players required to start a game: YOU+1/2/3 others
set PLAYERS=1

:: ZDoom port you want to bind
set PORT=10666

:: WADS required!
set WADS=Mapsofchaos-ok.wad HXRTCHUD-PDDB-V3.0.PK3 project brutality 2.03.pk3 PB_Multiplayer_ForceClass_ProjectBrutality.pk3

:: Other parameters you may run.
set OTHER=

:: We startin', grab the pistols!
gzdoom.exe -file %WADS% -host %PLAYERS% -port %PORT% %OTHER%