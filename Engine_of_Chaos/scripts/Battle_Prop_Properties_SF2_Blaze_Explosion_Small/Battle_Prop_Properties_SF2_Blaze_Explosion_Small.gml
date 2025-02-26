function Battle_Prop_Stats_SF2_Blaze_Explosion_Small(_stat){
	var _sprite = spr_SF2_Blaze_Explosion_Small;
	var _animation_speed = .25 / global.xspeed;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}