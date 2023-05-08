function Battle_Prop_Stats_AU_Blaze_Fire_Slash(_stat){
	var _sprite = spr_AU_Blaze_Fire_Slash;
	var _animation_speed = .5;
	var _draw_location = "Highest_02";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}