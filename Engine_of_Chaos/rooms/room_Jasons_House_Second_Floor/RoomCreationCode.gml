var _player;

switch(global.Story_State){
    case 0://First Cutscene
        Finish_Room_Transition(noone);//Cancel default room transition event
        _player = Create_Player(192,216,"Down","Jason",false,true);//x,y,direction,id,allow_interaction,cutsene_mode
        Create_Cutscene_Controller("Jasons_Room_Cutscene","Cutscene",0,_player);
        Play_Music(noone,"Fade_To_Next",250,0);
    break;
    default:
        _player = Spawn_Player("Jason","Egress");
        Spawn_Followers();
        Play_Music(bgm_Town,"Fade_To_Next",250,0);
    break;
}

Start_Room(_player);