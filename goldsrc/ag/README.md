----------------------------------------------------------------
| Ch0wW's Adrenaline Gamer's Dedicated server configuration pack |
----------------------------------------------------------------

This pack is a simple configuration pack for any server to administrate.
It contains a lot of functions, shortcuts, and simplicity of how to configure/use your server.

Here's the list of features:
- Configure easily your server (only 2 files to modify)
- Map Aliases (to quickly change the map)
- New commands (to gain a lot of time)
- Latest Tournament config files (EHLL)

----------------
	CONTENTS
----------------
- I)  How to install
- II) How to use it
- III)  Credits

------------------
I) How to install
------------------
All you need to do is to overwrite your <HLDED>/AG folder with the one provided here.

------------------
II) How to use it
------------------

a) The basic modifications.
==============================

First of all, we advise you to make changes inside server.cfg, so that you can change your hostname, RCON password, and other various settings.

Then, to select the default gamemode on startup, open "server_startup.cfg", then choose your default gamemode by uncommenting one of the gamemodes given (gm_tdm/gm_arcade/...).

Once everything is done, just start your server, and the magic is done for you.

b) Adding new map shortcuts
===========================

Adding new maps aliases to your server is easy.
First of all, you have to put your map (*.bsp) in the "/maps" folder ; and put your external custom resources to the other folders.
Then, go to "cfg/automaps.cfg" , and go to the bottom of the file.

You will then have to do write the following syntax (you can take some examples within the file by the way): 

> alias "[MAPNAME]"	"changelevel [MAPNAME]"

Reload your server.cfg file, and test your alias. It should immediatly work.

------------------
III) Credits
------------------

I spent a lot of time making this, in order to get THE best configuration possible for Adrenaline Gamer ; both in administration and simplicity. It was not based on anything, everything was written from scratch (except for gamemodes, that I just adapted).
