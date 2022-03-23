function Decrease_Pixel_Divider(){
	
	//Decreases the divider number by 1 tick
	global.Pixel_Divider -= 1; 
	if(global.Pixel_Divider < 1){
	    global.Pixel_Divider = 1;
	}
	
}