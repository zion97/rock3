// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_die(){
	if (act_index == 0)	return;
	sc_set_timeline(index_tl_die,,0);
	sprite_index		= index_spr_die;
	image_index			= 0;
}