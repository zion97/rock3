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
	
	if (global.index_clear == global.stage_index)
	{
		global.index_clear++;
		sc_vsls_save_value("index_clear", global.index_clear);
	}
	
	instance_create_depth(0, 0, 0, obj_clear_retry);
	instance_create_depth(0, 0, 0, obj_clear_next);
	instance_create_depth(0, 0, 0, obj_clear_menu);

	with (obj_mobile_button)
	{
		alarm[0] = 1;
	}
}






