with (obj_player_head)
{
	visible = false;
	with (instance_create_depth(x, y, depth-80, item_struct.index_obj_item))
	{
		dir = other.image_xscale;
		is_tile	= false;
	}
}

is_head = 0;

act_index = 1;