function Town_Character_Stats_Hillford_Kid_1(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Hillford_Kid_1";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		Set_NPC_Direction(_character,"Right",false);
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Hillford_Kid_1(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Hillford_Kid_1_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Female_Kid_1");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}