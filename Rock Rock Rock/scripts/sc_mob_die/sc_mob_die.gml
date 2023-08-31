// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_die(){
	if (act_index == 0)	return;
	act_index	= 0;
	sprite_index		= index_spr_die;
	image_index			= 0;
	timeline_index		= index_tl_die;
	timeline_running	= true;
	timeline_position	= 0;
}