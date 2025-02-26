function Battle_Prop_Stats_AU_Blaze_BG_Embers(_stat){
	var _sprite = spr_AU_Blaze_BG_Embers;
	var _animation_speed = .5 / global.xspeed;
	var _draw_location = "Middle";
	var _instant_destruction = true;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}