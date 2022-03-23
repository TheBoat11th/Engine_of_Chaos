function Character_Movement_Jason_01(_character){
	switch(_character.move_script_state){
	    case 0:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",1,2);
	    break;
		case 1:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",1,2);
	    break;
		case 2:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",1,2);
	    break;
		case 3:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",1,2);
	    break;
		case 4:
	        _character.move_script_state += 1;
	        Move_Character(_character,"Up",1,2);
	    break;
	    case 5:
	        _character.move_script_state = 0;
	        _character.custom_move_script = "none";
	    break;
	}
}