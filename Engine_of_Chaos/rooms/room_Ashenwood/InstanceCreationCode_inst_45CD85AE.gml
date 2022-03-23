if (global.FPS_Cap) > 180 {
cutscene_ID = "Meeting_Max_Cutscene180";
}
else {cutscene_ID = "Meeting_Max_Cutscene";}
if(global.Story_State >= 2){
    instance_destroy();
}