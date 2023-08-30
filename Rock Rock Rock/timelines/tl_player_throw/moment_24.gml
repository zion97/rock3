image_index		= 4;

with (obj_player_head)
{
	visible = false;
	with (instance_create_depth(x, y-10, depth-80, item_struct.index_obj_item))
	{
		speed_x	= other.image_xscale * 4;
		speed_y = -5;
	}
}

is_head = false;