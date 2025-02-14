function Load_Config(){
	//==================
	//Save Configuration
	//==================
	var _file_name = ("Game_Settings.cfg");//Name of the file
	if(file_exists(_file_name)){
	    ini_open(_file_name);//Create save file
    
	    //controls
	    global.Up_Button = ini_read_real("Controls","Up_Button",global.Up_Button);
	    global.Down_Button = ini_read_real("Controls","Down_Button",global.Down_Button);
	    global.Left_Button = ini_read_real("Controls","Left_Button",global.Left_Button);
	    global.Right_Button = ini_read_real("Controls","Right_Button",global.Right_Button);
	    global.Select_Button = ini_read_real("Controls","Select_Button",global.Select_Button);
	    global.Cancel_Button = ini_read_real("Controls","Cancel_Button",global.Cancel_Button);
	    global.Inspect_Button = ini_read_real("Controls","Inspect_Button",global.Inspect_Button);
	    global.Main_Menu_Button = ini_read_real("Controls","Main_Menu_Button",global.Main_Menu_Button);
		global.Fast_Forward = ini_read_real("Controls","Fast_Forward",global.Fast_Forward);
		global.Full_Screen_Button = ini_read_real("Controls","Full_Screen",global.Full_Screen_Button);
    
	    //settings
	    global.Dialogue_Speed = ini_read_real("Settings","Dialogue_Speed",global.Dialogue_Speed);
	    global.Sound_Volume = ini_read_real("Settings","Sound_Volume",global.Sound_Volume);
	    global.Music_Volume = ini_read_real("Settings","Music_Volume",global.Music_Volume);
	    global.Language = ini_read_string("Settings","Language",global.Language);
		//global.Perma_Death = ini_read_string("Settings","Perma_Death",global.Perma_Death);
		global.Pixel_Divider = ini_read_real("Settings","Pixel_Divider",global.Pixel_Divider);
		global.FPS_Cap = ini_read_real("Settings","FPS_Cap",global.FPS_Cap);
		global.Vsync = ini_read_string("Settings","Vsync",global.Vsync);
		
	    ini_close();
	}
}