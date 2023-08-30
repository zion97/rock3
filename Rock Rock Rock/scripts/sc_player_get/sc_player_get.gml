// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_move_player_get()
{
	if (col_item == -1 || is_head) return;

	with (obj_player_head)
	{
		item_struct = other.col_item.item_struct;
	}
	act_index	= false;
	timeline_index		= tl_player_get;
	timeline_running	= true;
	timeline_position	= 0;
	is_head = true;
	instance_destroy(col_item);
	//act_index	= function() { sc_player_get(); };
	//process		= 0;

}