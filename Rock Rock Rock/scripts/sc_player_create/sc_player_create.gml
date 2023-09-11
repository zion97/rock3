// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_create()
{
	depth += 10;
	instance_create_depth(x, y, depth+10, obj_player_head);
	instance_create_depth(x, y, 0, obj_player_light);
	
	col_item	= -1;
	get_item	= -1;
	is_head		= false;
	
	act_index	= 1;
	process		= 0;
}