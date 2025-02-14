function Increase_FPS_Cap(){
	//Increases the frame limit by 5
	global.FPS_Cap += 60;
	if(global.FPS_Cap > 720){
		global.FPS_Cap = 720;}
}  