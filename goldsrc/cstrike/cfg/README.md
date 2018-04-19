> //--------------------------------------- <br />
// 	  ---> TEMPLATE CFG FILE <--- <br />
// <br />
// [G]  : General settings. <br />
// [T]  : Team-related to TeamPlay. <br />
// [C] 	: Competitive setting. <br /> 
//--------------------------------------- <br />
<br />
//==========================<br />
//--- HEADER BASE SETTINGS ---<br />
//==========================<br />
exec "cfg/var/set_rcon.cfg"				// [M] Rcon Password.<br />
exec "cfg/var/automaps.cfg"				// [M] Easy rcon mapchanges.<br />
exec "cfg/var/aliases.cfg"				// [M] Command aliases.<br />
exec "cfg/var/var_blocked.cfg"			// [M] Blocked CVARs.<br />
<br />
//==========================<br />
//--- GENERIC SERVER SETTINGS ---<br />
//==========================<br />
hostname	 	"Your Half-Life Server"		// [G] Server-Name.<br />
sv_password 	""							// [G/C] Password to make it private.<br />
sv_region		"255"						// [G] Set the region of the server. (255 : World)<br />
sv_contact		"Ch0wW @ BaseQ.fr"			// [M] Contact address in case of a Cblem.<br />
sv_downloadurl 	""							// [M] Internet address in order to download FASTER custom files.<br />
<br />
//==========================<br />
//--- BASIC SERVER SETTINGS ---<br />
//==========================<br />
mp_timelimit 	   "20"						// [G/C] Maximum time before mapchange.<br />
mp_maxrounds  	    "0"						// [G] Maximum rounds before mapchange.<br />
mp_winlimit		    "0"						// [G] Maximum rounds won before mapchange.<br />
mp_startmoney     "800"						// [G] As the CVAR says.<br />
mp_roundtime  	    "3"						// [G/C] Time for a round.<br />
mp_freezetime 	    "5"						// [G] Freeze Time before starting a round.<br />
mp_buytime 	     "0.50"						// [G/C] Maximum time before being unable to buy.<br />
mp_c4timer	  	   "35"						// [G/C] Time before explosion (de_)<br />
mp_autokick	  	 	"1"						// [G] Auto-kick when inactive.<br />
<br />
//==========================<br />
//--- TEAMPLAY SETTINGS ---<br />
//==========================<br />
mp_limitteams  	    "0"						// [T/C] Limits teams to X number.<br />
mp_autoteambalance  "1"						// [G/T] AutoBalance teams if unfair.<br />
mp_playerid			"1" 					// [G/C] ID of the players.<br />
mp_friendlyfire     "0"						// [T/C] Team Killing?<br />
mp_hostagepenalty   "5"						// [G/T]  Kick when killing X hostages<br />
mp_tkpunish		    "0"						// [G/T]  Auto Kills a TKer after next round.<br />
mp_fadetoblack 		"0"						// [C] Fades to black when dead<br />
mp_forcechasecam 	"0"						// [G/C] Limits to all, or team-only?<br />
mp_forcecamera		"0"						// [G/C] Same effects than mp_forcechasecam.<br />
<br />
//==========================<br />
//---- VOICE SETTINGS ----<br />
//==========================<br />
voice_enable	"0"							// [G/C] Enables voice communications.<br />
sv_alltalk		"0"							// [G/T/C] Let everyone talk whatever their teams (if any)<br />
sv_voicequality	"3"							// [G] Voice Quality <br />
mp_chattime	   "10"							// [G] Chatting time at the intermission before changemap.<br />
<br />
//==========================<br />
//--- LOGGING  SETTINGS ---<br />
//==========================<br />
exec "cfg/var/logging.cfg"					// [M] Mostly Related in cfg/var/help.cfg<br />
											// Comment it if you don't want to log everything.<br />
//==========================<br />
//--- CUSTOM MAPLIST ? ---<br />
//==========================<br />
mapcyclefile "mapcycle.txt" // Uncomment it if you want to use the default mapcycle. -- only on your cstrike main folder!