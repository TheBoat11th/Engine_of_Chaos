function Increase_FPS_Cap(){
	
	//Increases the cap by 1
	global.FPS_Cap += 60;
	if(global.FPS_Cap > 600){
	    global.FPS_Cap = 600;}
		
}