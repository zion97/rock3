// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_patrol()
{
	var _col_index	= x + (x - bbox_left + 16)*dir;
	var _tile_id	= layer_tilemap_get_id("Tile_Collision");
	var _col1		= tilemap_get_at_pixel(_tile_id, _col_index, bbox_bottom - 8 );
	var _col2		= tilemap_get_at_pixel(_tile_id, _col_index, bbox_top + 8 );
	var _col3		= tilemap_get_at_pixel(_tile_id, _col_index, bbox_bottom + 8 );
	
	if (_col1 == 3 || _col2 == 3 || (_col3 == 0 && !is_jump))
	{
		dir = dir * -1;
	}
	
	sc_move_walk(index_spr_run, index_var_spd);
}