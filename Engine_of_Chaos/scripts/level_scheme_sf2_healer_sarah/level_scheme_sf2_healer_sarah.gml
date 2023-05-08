function Level_Scheme_SF2_Healer_Sarah(_lookup_type,_character,_stat,_sub_stat,_character_level){
	var _base = 0;//starting stat
	var _projected = 0;//projected "max level" stat
	var _catch_up = true;//do we correct poor RNG rolls this level?
	var _level = 0;//initial spell / skill level
	var _gain = 0;//estimated stat gain for this level
	
	var _base_level = 1;//Starting level for this class.
	var _max_level = 30;//Max level for this class.
	var _max_growth_level = 30;//Max growth level for this class. (after this level, any future growths are averaged)
	var _level_offset = 0;//the offset from the actual level. (class may display as level 1 but actually be equivalent to level 20)
	var _class_level = _character_level - _level_offset;//The current displayed level.
	//=================
	//Stat Information=
	//=================
	switch(_stat){
		case "Max_Health": _base = 11; _projected = 41; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Max_Magic": _base = 10; _projected = 42; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Early"); break;
	    case "Attack": _base = 6; _projected = 26; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Defense": _base = 5; _projected = 25; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Agility": _base = 5; _projected = 31; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = _base_level; break;
		case "Max_Level": _base = _max_level; break;
		case "Level_Offset": _base = _level_offset; break;
	    case "Class_Name": _base = "Healer"; break;
	    case "Class_Abbreviation": _base = "HEAL"; break;
	    case "Movement_Range": _base = 5; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
		
	    case "Spell_1": 
			_base = "SF2_Heal"; 
			_level = 1; 
			switch(_character_level){
				case 7: _level = 2; break;
				case 22: _level = 3; break;
				case 40: _level = 4; break;
			}
		break;
		
	    case "Spell_2": 
			_base = "SF2_Detox"; 
			_level = 1; 
			switch(_character_level){
				case 4: _level = 1; break;
				case 13: _level = 2; break;
				case 33: _level = 3; break;
				case 45: _level = 4; break;
			}
		break;
		
	    case "Spell_3": 
			_base = "SF2_Blast"; 
			_level = 1; 
			switch(_character_level){
				case 10: _level = 1; break;
				case 16: _level = 2; break;
				case 25: _level = 3; break;
				case 36: _level = 4; break;
			}
		break;
		
	    case "Spell_4": 
			_base = "SF2_Slow"; 
			_level = 1; 
			switch(_character_level){
				case 19: _level = 1; break;
				case 29: _level = 2; break;
			}
		break;
    
	    //Promotion options
	    case "Promotion_1": _base = "SF2_Vicar_Sarah"; break;
	    case "Promotion_2": _base = "SF2_Master_Monk_Sarah"; break;
	    case "Promotion_3": _base = "none"; break;
	    case "Promotion_4": _base = "none"; break;
	    case "Promotion_5": _base = "none"; break;
    
	    //Class requirements test (Defaults to true)
	    case "Meets_Requirements": _base = true; break;
	    case "Promotion_Event": break;//Put whatever script you want in here. (Such as removing an item upon promotion)
	}

	//======================
	//Return Requested Stat=
	//======================
	switch(_sub_stat){
	    case "Base": return _base; break;
		case "Level": return _level; break;
		case "Gain": return _gain; break;
	    case "Catch_Up": return _catch_up; break;
	}
}