function Nod_Head(_character,_iterations=0,_speed=25 * global.xspeed){
	_character.number_of_animations = _iterations;//set number of times we run the animation
	_character.animation = "Nod_Head";//set animation to shudder
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = _speed;
	_character.animation_direction = "down";
	_character.animation_start = true;
	Set_Last_Overworld_Frame(_character);
}