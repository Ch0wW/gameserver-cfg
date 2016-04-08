----------------------------------------------------------------
| Ch0wW's Adrenaline Gamer's Dedicated server configuration pack |
----------------------------------------------------------------

This pack is a very powerful (and complete) cfg pack for any server to administrate.
It contains a lot of functions, shortcuts, and simplicity of how to configure/use your server.
Of course, it is made from my own taste of how to perfectly configure a game server.

Here's the list of features:
- Configure easily your gameserver (1 file to modify and you're good to go)
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
Installing that pack is what I could say... The easiest thing to do in that time.

See that 'ag' folder on your dedicated server? Well, overwrite that folder by the one given in that pack.

Now... Restart your server. Many log messages should appear in the console. If so, the server is now well-configured.

------------------
II) How to use it
------------------

a) The basic modifications.
==============================

Now that you have installed it, it's time to configure some things.

- Open "server_startup.cfg", then choose your default gamemode by uncommenting one of the gamemodes given (gm_tdm/gm_arcade/...).
Also, modify the hostname & the Rcon...

That is all you actually need to do in order to make your server totally ready to play with no trouble!

b) Adding new map shortcuts
===========================

Adding new maps aliases to your server is easy.
First of all, you have to put your map (*.bsp) in the "/maps" folder ; and put your external custom resources in the other folders.
Then, go to "cfg/automaps.cfg" , and go to the bottom of the file.

You will then have to do write the following syntax : 

alias "[MAPNAME]"	"changelevel [MAPNAME]"

For further informations, please read "cfg/automaps.cfg".
Reload your server.cfg file, and test your alias. It should immediatly work.

------------------
III) Credits
------------------

I spent a lot of time making this, in order to get THE best configuration possible for Adrenaline Gamer ; both in administration and simplicity. It was not based on anything, everything was written from scratch (except for gamemodes, that I just adapted).
