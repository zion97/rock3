// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_move_hit(_speed_x = 0, _speed_y = 0)
{
	act_index	= 2;
	timeline_index		= tl_move_hit;
	timeline_running	= true;
	timeline_position	= 0;
	
	speed_x = _speed_x;
	speed_y = _speed_y;
}