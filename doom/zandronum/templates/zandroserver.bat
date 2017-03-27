::===================
::
:: Windows Zandronum Server template.
:: Don't forget to set all of your wads within that folder (IWAD included!)
:: 
:: If you want to add multiple PWADs:
:: set PWAD="wad1.pk3 wad2.wad wad3.wad wad4.pk3"
::
::===================
set PORT=10666
set IWAD="DOOM2.WAD"
set PWAD=""
set CFG="server.cfg"

zandronum.exe -host -port %PORT% -iwad %IWAD% -file %PWAD% +exec %CFG% %ADD_PARMS%
