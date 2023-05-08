function Increase_Pixel_Divider(){
	
	//Increases the divider number by 1
	global.Pixel_Divider += 1;
	if(global.Pixel_Divider > 18){
	    global.Pixel_Divider = 18;
	}
	
}