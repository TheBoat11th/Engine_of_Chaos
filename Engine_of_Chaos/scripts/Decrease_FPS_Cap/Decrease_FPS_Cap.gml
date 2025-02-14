function Decrease_FPS_Cap(){
	//Decreases the frame limit by 5
	global.FPS_Cap -= 60;
	if(global.FPS_Cap < 60){
	    global.FPS_Cap = 60;}
}