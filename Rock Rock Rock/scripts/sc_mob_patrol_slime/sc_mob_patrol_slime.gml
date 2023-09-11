// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_patrol_slime()
{
	var _col_index	= x + (x - bbox_left + 16)*dir;
	var _tile_id	= layer_tilemap_get_id("Tile_Collision");
	var _col1		= tilemap_get_at_pixel(_tile_id, _col_index, bbox_bottom - 8 );
	var _col2		= tilemap_get_at_pixel(_tile_id, _col_index, bbox_top + 8 );
	
	if (state == 0)	
	{
		sc_move_walk(index_spr_jump2, index_var_spd);
		if (!is_jump)
		{
			process	= irandom_range(60, 80);
			state	= 1;
			sc_set_timeline(tl_mob_slime_down);
		}
	}
	else
	{
		sc_move_stand(index_spr_stand);
		process--;
		if (process < 0)
		{
			if (_col1 == 3 || _col2 == 3) dir = dir * -1;
			state	= 0;
			sc_set_timeline(tl_mob_slime_jump);
		}
	}
}