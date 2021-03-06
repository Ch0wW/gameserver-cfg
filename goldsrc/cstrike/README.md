//---------------------------------------
// -- Professionnal Configuration  --
// Revision 3 -- Created 23/01/2012 --
//
// Game : Counter-Strike 1.6 - Steam
//
// Documentation File to configure your server.
//
//-----------
// Values   | 
//-----------
//
// [String] : Text
// [Int]	: Integer (ex : 1, 88, 4096)	
// [Float] 	: Decimal number (ex: 12.3)
// [Bool]	: Boolean (False = 0 / True = 1)
//
//----------------------
// http://www.BaseQ.fr |
//----------------------------------------

//=======================================
// GENERAL SETTINGS
//
// hostname "[String]" 
// --> Name of your server. 
// --> Exemple : hostname "FooBar Server :>"
	
// sv_password "[String]"
// --> Password to join your servers. 
// --> Exemple : sv_password "pcw"

// sv_region "[Int]"
// --> The region your server will be shown.
// *    Values : 0 - US East
//				 1 - US West
//				 2 - South America
//				 3 - Europe
//				 4 - Asia
//				 5 - Australia
//				 6 - Middle East
//				 7 - Africa
// 				-1 / 255 - World
// --> Exemple : sv_region "255"

// sv_contact "[String]"
// --> The email to contact you when there is a problem, remark, etc...
// --> Exemple : sv_contact "Ch0wW@Mail.exemple"

// rcon_password "[String]"
// --> Password to control remotely your server.
// * Clients must do rcon_password "[PASSWORD]" , then rcon [COMMAND]
// --> Exemple : rcon_password "foobar"

// sv_downloadurl "[String]"
// --> Makes clients able to download faster custom files (maps/sounds/models...)
// * For further informations, please check this link: https://developer.valvesoftware.com/wiki/Sv_downloadurl
// * Furthermore, you'll have to check if sv_allowdownload and sv_allowupload are set to 1. They are automatically by default.
// --> Exemple : sv_downloadurl "http://www.baseq.fr/valve/"
//=======================================

//__________________________________________________

//=======================================
// BASIC GAMEPLAY SETTINGS

// mp_timelimit "[Int/Float]"
// --> Defines the time before making a changemap.
// * A decimal value will add (60/[Time]) seconds with the integer value.
// --> Exemple : mp_timelimit "20"

// mp_maxrounds "[Int]"
// --> Sets the maximum rounds on a map.
// --> Exemple : mp_maxrounds "12"

// mp_winlimit "[Int]"
// --> Sets the maximum rounds won by a team.
// --> Exemple : mp_winlimit "7"

// mp_startmoney "[Int]"
// --> Sets the money given at the start of a game.
// * Maximum money on the game is 16000!
// --> Exemple : mp_startmoney "16000"

// mp_roundtime "[Int/Float]"
// --> Time for a round.
// * A decimal value will add (60/[Time]) seconds with the integer value.
// --> Exemple : mp_roundtime "3"

// mp_freezetime "[Int]"
// --> ReadyUp time before starting a round. 
// --> Exemple : mp_freezetime "5"

// mp_buytime "[Int/Float]"
// --> Maximum time before being unable to buy.
// --> Exemple : mp_buytime "0.25"

// mp_c4timer "[Int]"
// --> Maximum time before making the bomb exploding.
// --> Exemple : mp_c4timer "40"

// mp_autokick "[Bool]"
// --> Don't kick/Kick a player if inactive
// --> Exemple : mp_autokick "1"
//=======================================

//__________________________________________________

//=======================================	
// TEAMPLAY SETTINGS
//
// mp_limitteams "[Int]"
// --> Limits teams to the value given.
// * 0 disables the limit.
// --> Exemple : mp_limitteams "0"

// mp_autoteambalance "[Bool]"
// --> Auto-balances teams if it is becoming unfair.
// --> Exemple : mp_autoteambalance "1"

// mp_playerid "[Int]"
// --> Shows the ID of the player.
// * Values : 0 - Everyone can see the names, Teamcolors included.
//			  1 - Everyone can see the names, Teamcolors not seen.
//			  2 - No name can be seen.
// --> Exemple : mp_playerid "1"

// mp_friendlyfire "[Bool]"
// --> Disable/Activate team damages.
// --> Exemple : mp_friendlyfire "1" 	

// mp_hostagepenalty "[Int]"
// --> Kick player after killing X hostages.
// --> Exemple : mp_hostagepenalty "5" 	

// mp_tkpunish "[Bool]"
// --> Auto-kills the TKer if he/she TK'ed someone on the next round.
// --> Exemple : mp_tkpunish "0" 	

// mp_fadetoblack "[Bool]"
// --> Fades the screen to black when killed.
// --> Exemple : mp_fadetoblack "0"

// mp_forcechasecam "[Int]"
// --> Limits the chasecam when dead (spec. deathcam)
// * Values :	0 - Can spectate anyone in any mode.
//				1 - Can spectate only his team.
//				2 - Can spectate only his own body, nothing else.
// --> Exemple : mp_forcechasecam "1"

// mp_forcecamera "[Int]"
// --> Same effects than mp_forcechasecam (correct me if I'm wrong)
// * For weird reasons, mp_forcecamera didn't work at all on CS.
// * Set it then to the same value than mp_forcechasecam.
// --> Exemple : mp_forcecamera "1"
//=======================================

//__________________________________________________

//=======================================	
// VOICE SETTINGS
//
// voice_enable "[Bool]"
// --> Disable/Enable voice communications
// --> Exemple : voice_enable "1"

// sv_alltalk "[Bool]"
// --> Disable/Enable public vocal chat whatever their teams (if any)
// --> Exemple : sv_alltalk "1"

// sv_voicequality "[Int]"
// --> Quality of the voice sent by the server.
// * Values are from 1 to 5 (5 = worst quality)
// --> Exemple : sv_voicequality "3"

// mp_chattime "[Int]"
// --> Final chatting time in intermission screen.
// --> Exemple : mp_chattime "12"
//=======================================

//__________________________________________________

//=======================================
// LOGGING
// Not all commands are here; they are advanced options.
//
// log "[Bool]"
// --> Logs every message to a text file.
// * "on" and "off" are the only options available!
// --> Exemple : log "on"

// logsdir "[String]"
// --> Saves all the logs to the directory.
// * By Default, it is "logs".
// --> Exemple : logsdir "hldsfoobar"
//=======================================

