function Decrease_FPS_Cap(){
	
	//Decreases the cap by 1
	global.FPS_Cap -= 1;
	if(global.FPS_Cap < 60){
	    global.FPS_Cap = 60;}
	
}