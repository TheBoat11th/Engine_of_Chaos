function Meeting_Max_Cutscene180() {
	var _jason = player_trigger;
	var _max = Get_Character("AU_Max","Default");
	
	switch(state){
	    case 0:
	        state += 1;
			_jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _max.cutscene_mode = true;
			alarm[0] = 20 * global.xspeed; // causes crash at 240fps, required for 60fps
	    break;
		case 1:
			state += 1;
			Face_Direction(_jason,"Left");
	        Face_Direction(_max,"Right");
	        Create_Character_Dialogue("Local",_max,_jason.name + "!^ It's about time you got up!^ We're going to be late!",id,true,true);//portrait, voice, message,object,arrow,pan
		break;
	    case 2:
	        state += 1;
	        alarm[0] = 20 * global.xspeed;
	    break;
	    case 3:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"Late for what?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 4:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"Our first official job request!%\nOut of all the other adventuring groups in existence, our client specifically chose US for this mission.%\nWe must have built up quite the reputation after our first adventure!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 5:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"MAX.^ That's several days away.^ We've got plenty of time.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 6:
	        state += 1;
	        Shudder(_max);
	    break;
	    case 7:
	        state += 1;
	        alarm[0] = 20 * global.xspeed;
	    break;
	    case 8:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"You can never start too early!^\nWe might have to disarm some traps along the way!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 9:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"When was the last time you've seen a trap around here?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 10:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"I had to disarm your door last time.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 11:
	        state += 1;
	        //Face_Direction(_jason,'Down');
	        Shake_Head(_jason);
	    break;
	    case 12:
	        state += 1;
	        alarm[0] = 20 * global.xspeed;
	    break;
	    case 13:
	        state += 1;
	        Face_Direction(_jason,"Left");
	        Create_Character_Dialogue("Local",_jason,"MAX,^ our door wasn't trapped.^ It was locked.^ There's a difference.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 14:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"Well that didn't stop me from getting in.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 15:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"That's not the point.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 16:
	        state += 1;
	        //Face_Direction(_jason,'Down');
	        Nod_Head(_jason);
	    break;
	    case 17:
	        state += 1;
	        alarm[0] = 20 * global.xspeed;
	    break;
	    case 18:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"(sigh)^ Well since I'm already awake,^ I guess it can't hurt to head out early.",id,true,true);
	    break;
    
	    case 19:
	        state += 1;
	        Perform_Jump(_max,2);
	    break;
	    case 20:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"That's the spirit!^\nWe'll meet Ciera at her house and then head towards Hillford!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 21:
	        state += 1;
	        Join_Party("Global",1,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	        Follow_Character(_max,_jason);
	        Create_Dialogue(noone,noone,"MAX joins the party.",id,false,true);//portrait, voice, message,object,arrow,pan
	        //Stop_Dialogue_Interaction();
	        //Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 22:
		Set_Camera_Target(_jason);
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _max.cutscene_mode = false;
	        global.Story_State += 1;
	        instance_destroy();
	    break;
	}

}