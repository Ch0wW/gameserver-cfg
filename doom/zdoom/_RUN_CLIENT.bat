:: IP you want to connect to.
set IP=192.168.0.100

:: Port needed to connect to the host.
set PORT=10666

:: Put the wads needed to be able to join!
set WADS=Mapsofchaos-ok.wad HXRTCHUD-PDDB-V3.0.PK3 project brutality 2.03.pk3 PB_Multiplayer_ForceClass_ProjectBrutality.pk3

:: We startin', grab the pistols!
gzdoom.exe -file %WADS% -join %IP% -port %PORT%
