function Battle_Prop_Stats_AU_Blast_Whirlwind_01(_stat){
	var _sprite = spr_AU_Blast_Whirlwind_01;
	var _animation_speed = .5 / global.xspeed;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Loop_Event_AU_Blast_Whirlwind_01(_prop){
	with(_prop){
		x_pos = Wave(wave_x_center-20,wave_x_center+20,2,0);
	}
}