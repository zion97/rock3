/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (other.act_index == 0)	return;

if (is_head == 0 || is_head == 4)
{
	sc_move_player_die();
}
else
{
	var _index_kind = other.index_var_kind;
	if (is_head == 1 && _index_kind == 2 || 
		is_head == 2 && _index_kind == 3 || 
		is_head == 3 && _index_kind == 1)
	{
		with(other)
		{
			sc_mob_die();
		}
	}
	if (is_head == 1 && _index_kind == 3 || 
		is_head == 2 && _index_kind == 1 || 
		is_head == 3 && _index_kind == 2)
	{
		sc_move_player_die();
	}
}
//sc_move_player_die();
