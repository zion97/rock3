sprite_index = spr_player_die;
if (is_head)
{
	sprite_index = spr_player2_die;
}
image_index = 0;
with (obj_player_head)
{
	image_index		= other.image_index;
	sprite_index	= item_struct.index_spr_die;
	depth			= other.depth - 20;
}