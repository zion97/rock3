/// @description 몹이 없으면 게임 클리어
// 이 에디터에 코드를 작성할 수 있습니다

if (index_mob <= 0)
{
	with (obj_player)
	{
		act_index			= -1;
		timeline_running	= false
		speed_x				= 0;
		speed_y				= 0;
	}
	is_clear	= true;
}






