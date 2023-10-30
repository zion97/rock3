/// @description 몹 오브젝트와 충돌할 경우
// 이 에디터에 코드를 작성할 수 있습니다
if (act_index == 0 || other.act_index == 0)	return;

if (is_head == 0 || is_head == 4)
{
	//instance_create_depth(x, y, depth-50, obj_ef);
	sc_move_player_die();
	global.pause = 20;
}
else
{
	var _index_kind = other.index_var_kind;
	if (is_head == 1 && _index_kind == 2 || 
		is_head == 2 && _index_kind == 3 || 
		is_head == 3 && _index_kind == 1)
	{
		//instance_create_depth(x, y, depth-50, obj_ef);
		with(other)
		{
			sc_mob_die();
		}
		is_head = 0;
		act_index			= 1;
		timeline_position	= 500;
		with (obj_player_head)
		{
			visible = false;
		}
		global.pause = 20;
	}
	if (is_head == 1 && _index_kind == 3 || 
		is_head == 2 && _index_kind == 1 || 
		is_head == 3 && _index_kind == 2)
	{
		//instance_create_depth(x, y, depth-50, obj_ef);
		sc_move_player_die();
		global.pause = 20;
	}
	if (is_head == _index_kind)
	{
		
	}
}
//sc_move_player_die();
