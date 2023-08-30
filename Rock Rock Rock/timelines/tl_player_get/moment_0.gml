sprite_index	= spr_player_get;
image_index		= 0;

with (obj_player_head)
{
	image_index		= other.image_index;
	sprite_index	= item_struct.index_spr_get;
	depth			= other.depth - 50;
	visible			= true;
}