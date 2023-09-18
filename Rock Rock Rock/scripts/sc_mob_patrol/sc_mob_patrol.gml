// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_patrol()
{
	var _col_index	= x + (x - bbox_left + 16)*dir;
	
	if (state == 0)	
	{
		sc_move_walk(index_spr_run, index_var_spd);
		if (sc_get_col(_col_index, bbox_bottom - 8) == 1 || sc_get_col(_col_index, bbox_top + 8) == 1 
			|| (sc_get_col(_col_index, bbox_bottom + 8) == 0 && !is_jump))
		{
			process	= irandom_range(60, 120);
			state	= 1;
		}
	}
	else
	{
		sc_move_stand(index_spr_stand);
		process--;
		if (process < 0)
		{
			dir		= dir * -1;
			state	= 0;
		}
	}
}