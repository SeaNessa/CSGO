#include <sourcemod>
#include <sdktools>
#include <weapons>

#pragma semicolon 1

public Plugin:myinfo = {
	name = "Give Default Knife",
	author = "Sean",
	description = "Give the default knife to player",
	version = "1.0"
};

public OnPluginStart()
{
	RegConsoleCmd("sm_dk", Command_EquipDefault);
}

public Action:Command_EquipDefault(client, args)
{
	if (!IsPlayerAlive(client)) return Plugin_Handled;
	if (!Client_HasWeaponKnife(client,"weapon_knife", true)) {
		GivePlayerItem(client, "weapon_knife");
	}
	else {
		return Plugin_Handled;
	}
	return Plugin_Handled;
}
