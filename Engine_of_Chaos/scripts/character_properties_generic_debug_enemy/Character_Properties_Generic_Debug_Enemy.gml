function Town_Character_Stats_Generic_Debug_Enemy(_character){
	with(_character){
		name = "Enemy Name";//Name
	    faction = "Enemy";//Faction
	    gold_value = 20;
	    level = 1;
	    max_health = 1000;
	    current_health = max_health;
		max_magic = 1000;
		current_magic = max_magic;
	    attack = 1;
	    defense = 4;
	    agility = 3;
	    movement_range = 5;
		fire_damage = 3;
	    movement_type = "Flying";
		
		spells[0] = "SF2_Blaze";
		spell_level[0] = 4;
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Generic_Debug_Enemy(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_AU_Wolf_Overworld;
	var _portrait = noone;
	var _voice = sfx_Dialogue07;
	var _battle_sprite = "AU_Wolf";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}

//===================
//Battle Sprite Setup
//===================
function Get_Battle_Sprite_Stats_Generic_Debug_Enemy(_animation,_stat){
	//=============
	//Default Stats (Assume Idle Animation)
	//=============
	var _parent_animation = _animation;
	var _location = "Background"; //Foreground or Background
	var _sprite = spr_AU_Wolf_Idle; //Sprite
	var _animation_speed = .0625 / global.xspeed; //Animation Speed
	var _projectile_type = "Weapon"; //Projectile Sprite ("Weapon" uses sprite set via item's script)
	var _projectile_path = "Default"; //Path of the projectile ("Default" = straight line, "Arc" = long volley)
	var _event_type = "Default"; //Battle Cutscene event script to run (laser eye / prism flowers /etc)
	var _use_controller_animation = false; //Use builtin controller animation (Take hit / death / appear, are handled by the object itself)
	
	//===================
	//Animation Overrides
	//===================
	switch(_animation){
		case "Melee_Attack": _sprite = spr_AU_Wolf_Attack; break;
		case "Block": _sprite = spr_AU_Wolf_Block; break;
		default: //Run parent animation by default if child isn't set (ranged / spell_cast runs melee, etc.)
			_parent_animation = Get_Battle_Sprite_Stats_Default(_animation,"Parent_Animation");
			_use_controller_animation = Get_Battle_Sprite_Stats_Default(_animation,"Use_Controller_Animation");
		break;
	}
	
	//===========
	//Return Stat
	//===========
	switch(_stat){
	    case "Parent_Animation": return _parent_animation; break;
	    case "Sprite": return _sprite; break;
	    case "Animation_Speed": return _animation_speed; break;
	    case "Location": return _location; break;
	    case "Use_Controller_Animation": return _use_controller_animation; break;
	    case "Projectile_Path": return _projectile_path; break;
	    case "Projectile_Type": return _projectile_type; break;
	    case "Event_Type": return _event_type; break;
	    default: return 0; break;
	}
}