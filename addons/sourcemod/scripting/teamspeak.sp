#include <sourcemod>
#include <cstrike>
#include <sdktools>
#include <colors>
 
public Plugin:myinfo =
{
	name = "Show TeamSpeak Information",
	author = "Sean",
	description = "Shows information about TeamSpeak",
	version = "1.0.0.0",
}
 
public OnPluginStart()
{
	RegConsoleCmd("sm_ts", Command_TeamSpeak);
}
 
public Action:Command_TeamSpeak(client, args)
{
	CPrintToChatAll("{green}You can check out our TeamSpeak at IP ts.unitedsb.net");
 
	return Plugin_Handled;
}
/**
 * Gives Text output in color (wow).
 * My First Plugin ever made :)
 */
 
