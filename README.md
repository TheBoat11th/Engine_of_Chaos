2023.6.0.92
//added auto-pixel perfect resolution scaling,pixel divider
//vsync on/off menu and save function
//FPS_Cap
//scripts edited:
Create_Global_Game_Settings
Create_Game_Settings_Menu
Game_Settings_Event

Toggle_Vsync
Increase_Pixel_Divider
Increase_FPS_Cap
Decrease_Pixel_Divider
Decrease_FPS_Cap

Update_game_settings_Array
Reset_Game_Settings
save config
load config
Menu_Message_English

//added fastforward - obj_character.step single-key fastforward. - obj_character.create line 332 fastcheck
//added Fullscreen button to control menu
//scripts edited:
Create_Global_Game_Settings
Update_Control_Array
Swap_Duplicate_Controls
obj_Character
Control_Config_Event
Create_Control_Config_Menu
save_config
load_config

Increase_Dialouge_Speed comment changed from sfx volume to dialouge speed

Continue dialouge function when pressing cancel button. - obj_Dialouge_Controller:Step Line 72

game_set_speed(global.FPS_Cap, gamespeed_fps);
High framerate fix (60-540 FPS) - divide by global.xspeed

AU_Moorenfirch_Priest_Blacksmith - addedcase0.5 for 240fps+
AU_Moorenfirch_Priest_Church - adjusted for 240fps+

Battle_02 terrain_Instace_Layer Visible

meeting Ciera, and Max cutscene adjusted for 240fps+

