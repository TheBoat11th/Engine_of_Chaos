function Update_Game_Settings_Array() {
	settings_array[0] = "";
	settings_array[1] = global.Dialogue_Speed;
	if(global.Perma_Death){
	    settings_array[2] = "Enabled";
	}
	else{
	    settings_array[2] = "Disabled";
	}
	settings_array[3] = round(global.Sound_Volume*100);
	settings_array[4] = round(global.Music_Volume*100);
	settings_array[5] = global.Pixel_Divider;
	if(global.Vsync){
	    settings_array[6] = "Enabled";
	}
	else{
	    settings_array[6] = "Disabled";
	}
	settings_array[7] = global.FPS_Cap;
	if(global.FixedFocus){
	    settings_array[8] = "Enabled";
	}
	else{
	    settings_array[8] = "Disabled";
	}
}