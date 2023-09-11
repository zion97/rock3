// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_move_player_die()
{
	if (act_index == 0)	return;
	sc_set_timeline(tl_player_die,,0);
}