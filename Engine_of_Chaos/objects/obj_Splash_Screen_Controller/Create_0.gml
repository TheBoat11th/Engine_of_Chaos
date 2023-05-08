Create_Global_Game_Settings();//initialize controls, etc
Create_New_Data();//Initialize character data
Create_Audio_Controller();//Create Audio Controller
Load_Config();//Load our configuration (If it exists)

global.View_Width = display_get_width()/global.Pixel_Divider;//Width of the game's view - default 16:9 480
global.View_Height = display_get_height()/global.Pixel_Divider;//Height of the game's view - default 16:9 270

global.xspeed = global.FPS_Cap/60;
	
if (global.Vsync = false){display_reset(0, false);
	room_speed = global.FPS_Cap;}
else {display_reset(0, true);
	room_speed = ceil(display_get_frequency())}
			
sprite_index = spr_Splash_Screen_Character;
image_speed = .17 / global.xspeed;

display_text = false;
fade_direction = "none";

fade_speed = .05;
fade = 0;

previous_frame = 0;