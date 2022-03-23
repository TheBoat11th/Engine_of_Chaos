function Save_Config(){
	//==================
	//Save Configuration
	//==================
	var _file_name = ("Game_Settings.cfg");//Name of the file
	ini_open(_file_name);//Create save file

	//controls
	ini_write_real("Controls","Up_Button",global.Up_Button);
	ini_write_real("Controls","Down_Button",global.Down_Button);
	ini_write_real("Controls","Left_Button",global.Left_Button);
	ini_write_real("Controls","Right_Button",global.Right_Button);
	ini_write_real("Controls","Select_Button",global.Select_Button);
	ini_write_real("Controls","Cancel_Button",global.Cancel_Button);
	ini_write_real("Controls","Inspect_Button",global.Inspect_Button);
	ini_write_real("Controls","Main_Menu_Button",global.Main_Menu_Button);
	ini_write_real("Controls","Fastforward",global.Fastforward);
	ini_write_real("Controls","EndFastforward",global.EndFastforward);

	//settings
	ini_write_real("Settings","Dialogue_Speed",global.Dialogue_Speed);
	ini_write_real("Settings","Sound_Volume",global.Sound_Volume);
	ini_write_real("Settings","Music_Volume",global.Music_Volume);
	ini_write_string("Settings","Language",global.Language);
	ini_write_real("Settings","Pixel_Divider",global.Pixel_Divider);
	ini_write_string("Settings","Vsync",global.Vsync);
	ini_write_string("Settings","Perma_Death",global.Perma_Death);
	ini_write_real("Settings","FPS_Cap",global.FPS_Cap);
	
	ini_close();
}