//---------------------------------------
// 	  ---> TEMPLATE CFG FILE <---
//
// [G]  : General settings.
// [T]  : Team-related to TeamPlay.
// [C] 	: Competitive setting.
//---------------------------------------

//==========================
//--- HEADER BASE SETTINGS ---
//==========================
exec "cfg/var/set_rcon.cfg"				// [M] Rcon Password.
exec "cfg/var/automaps.cfg"				// [M] Easy rcon mapchanges.
exec "cfg/var/aliases.cfg"				// [M] Command aliases.
exec "cfg/var/var_blocked.cfg"			// [M] Blocked CVARs.

//==========================
//--- GENERIC SERVER SETTINGS ---
//==========================
hostname	 	"Your Half-Life Server"		// [G] Server-Name.
sv_password 	""							// [G/C] Password to make it private.
sv_region		"255"						// [G] Set the region of the server. (255 : World)
sv_contact		"Ch0wW @ BaseQ.fr"			// [M] Contact address in case of a Cblem.
sv_downloadurl 	""							// [M] Internet address in order to download FASTER custom files.

//==========================
//--- BASIC SERVER SETTINGS ---
//==========================
mp_timelimit 	   "20"						// [G/C] Maximum time before mapchange.
mp_maxrounds  	    "0"						// [G] Maximum rounds before mapchange.
mp_winlimit		    "0"						// [G] Maximum rounds won before mapchange.
mp_startmoney     "800"						// [G] As the CVAR says.
mp_roundtime  	    "3"						// [G/C] Time for a round.
mp_freezetime 	    "5"						// [G] Freeze Time before starting a round.
mp_buytime 	     "0.50"						// [G/C] Maximum time before being unable to buy.
mp_c4timer	  	   "35"						// [G/C] Time before explosion (de_)
mp_autokick	  	 	"1"						// [G] Auto-kick when inactive.

//==========================
//--- TEAMPLAY SETTINGS ---
//==========================
mp_limitteams  	    "0"						// [T/C] Limits teams to X number.
mp_autoteambalance  "1"						// [G/T] AutoBalance teams if unfair.
mp_playerid			"1" 					// [G/C] ID of the players.
mp_friendlyfire     "0"						// [T/C] Team Killing?
mp_hostagepenalty   "5"						// [G/T]  Kick when killing X hostages
mp_tkpunish		    "0"						// [G/T]  Auto Kills a TKer after next round.
mp_fadetoblack 		"0"						// [C] Fades to black when dead
mp_forcechasecam 	"0"						// [G/C] Limits to all, or team-only?
mp_forcecamera		"0"						// [G/C] Same effects than mp_forcechasecam.

//==========================
//---- VOICE SETTINGS ----
//==========================
voice_enable	"0"							// [G/C] Enables voice communications.
sv_alltalk		"0"							// [G/T/C] Let everyone talk whatever their teams (if any)
sv_voicequality	"3"							// [G] Voice Quality 
mp_chattime	   "10"							// [G] Chatting time at the intermission before changemap.

//==========================
//--- LOGGING  SETTINGS ---
//==========================
exec "cfg/var/logging.cfg"					// [M] Mostly Related in cfg/var/help.cfg
											// Comment it if you don't want to log everything.
//==========================
//--- CUSTOM MAPLIST ? ---
//==========================
// mapcyclefile "mapcycle.txt" // Uncomment it if you want to use the default mapcycle. -- only on your cstrike main folder!

//==========================
//--- ECHOING THE MODE ---
//==========================
echo "[DEBUG--CHANGEMODE] -> [>YOURMODE<] MODE LOADED"
say "-> Settings loaded!"