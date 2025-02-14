function Battle_Prop_Stats_AU_Detox(_stat){
	var _sprite = spr_AU_Detox;
	var _animation_speed = .5 / global.xspeed;
	var _draw_location = "Highest";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}