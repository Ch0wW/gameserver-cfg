//---------------------------------------
// -- Professionnal Configuration  --
// Revision 3 -- Created 23/01/2012 --
//
// Game : Half-Life 1 (1.1.1.0 Won / 1.1.1.1 Steam)
//
// Documentation File to configure your server.
//
//-----------
// Values   | 
//-----------
//
// [String] : Text
// [Int]	: Full-Number (ex : 1, 88, 4096)	
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

// mp_fraglimit "[Int]"
// --> Defines the maximum frags before making a changemap.
// --> Exemple : mp_fraglimit "100"

// mp_timelimit "[Int/Float]"
// --> Defines the time before making a changemap.
// * A decimal value will add (60/[Time]) seconds with the integer value.
// --> Exemple : mp_timelimit "20"

// mp_footsteps "[Bool]"
// --> Disable/Activate the footsteps.
// --> Exemple : mp_footsteps "1"

// mp_falldamage "[Bool]"
// --> Activate Normal/Realistic Fall Damages.
// * Damage is calculated with your falling height, while normal removes only 10 hp whatever the height is.
// --> Exemple : mp_falldamage "0"

// mp_flashlight "[Bool]"
// --> Remove/Gives the flashlight
// --> Exemple : mp_flashlight "0"

// mp_weaponstay "[Bool]"
// --> Auto-Respawns the weapon picked up.
// * Once picked up, you cannot grab this weapon again! Search only for ammo then!
// --> Exemple : mp_weaponstay "0"

// sv_aim "[Bool]"
// --> Helps to aim the other players.
// --> Exemple : sv_aim "0"

// mp_autocrosshair "[Bool]"
// --> Same effects that sv_aim, required for old Valve HL versions. 
// --> Exemple : mp_autocrosshair "0"

// mp_forcerespawn "[Bool]"
// --> Forces the dead players to respawn.
// --> Exemple : mp_forcerespawn "1"

// sv_maxspeed "[Int]"
// --> Defines the maximum movement speed. 
// * Never put values other than 270 or 320 !!
// --> Exemple : sv_maxspeed "270"
//=======================================

//__________________________________________________

//=======================================	
// TEAMPLAY SETTINGS
//
// mp_teamplay "[Bool]"
// --> Disable / Activate Teamplay modes.
// * A changemap is required to make this change.
// --> Exemple : mp_teamplay "0"

// mp_friendlyfire "[Bool]"
// --> Disable/Activate team damages.
// --> Exemple : mp_friendlyfire "1" 	

// mp_teamlist "[String, String,...]"
// --> Gives all the teams allowed on teamplay.
// * Values must be correct models!
// Exemple : mp_teamlist "hgrunt, robo"
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