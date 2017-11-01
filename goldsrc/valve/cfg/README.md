//---------------------------------------
// 	  ---> TEMPLATE CFG FILE <---
//
// [G]	: General settings.
// [T] 	: Team-related to TeamPlay.
// [C] 	: Modifiable setting for competitive.
//---------------------------------------

//==========================
//--- BASIC SERVER SETTINGS ---
//==========================
mp_timelimit 	"20"						// [G/C] Maximum time before mapchange.
mp_fraglimit	 "0"						// [G] if the limit is reached, changemap.
mp_forcerespawn	 "0"						// [G/C] Forces players to respawn.
mp_weaponstay	 "0"						// [G] Lets the weapons instantly respawn.
mp_flashlight	 "0"						// [G] Gives the flashlight to the player.
mp_falldamage	 "0"						// [G/C] Normal, or Realistic damages?
sv_maxspeed	   "270"						// [G/C] Maximum capped speed.

//==========================
//--- TEAMPLAY SETTINGS ---
//==========================
mp_teamplay 	"0"							// [G/T/C] FFA, or Teamplay mode?
mp_friendlyfire	"0"							// [T/C] Makes damage to friends?
mp_teamlist 	"hgrunt, scientist"			// [G/C] Teams allowed.

//==========================
//---- VOICE SETTINGS ----
//==========================
voice_enable	"0"							// [G/C] Enables voice communications.
sv_alltalk		"0"							// [G/T/C] Let everyone talk whatever their teams (if any)
sv_voicequality	"3"							// [G] Voice Quality 