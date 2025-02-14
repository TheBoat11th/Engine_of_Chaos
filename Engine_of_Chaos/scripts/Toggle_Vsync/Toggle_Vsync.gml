function Toggle_Vsync(){
	if (global.Vsync = false){
  display_reset(0, true);
  global.Vsync = true;}
	else{
  display_reset(0, false);
  global.Vsync = false;}
}