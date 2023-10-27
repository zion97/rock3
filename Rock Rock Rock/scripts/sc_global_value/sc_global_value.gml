// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_global_value()
{
	global.save_file	= "saveFile";
	
	global.pad_slot	= 0;
	global.key		= array_create(4, 0);
	
	global.pause	= 0;
	
	global.sig		= array_create(10, false);
	
	global.cam_target	= 0;
	
	global.room_buffer	= rm_main;
	
	global.stage_index	= 0;
	
	global.cam_x		= 0;
	global.cam_y		= 0;
}