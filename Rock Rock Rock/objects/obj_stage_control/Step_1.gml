/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (global.pause > 0)
{
	global.pause--;
}


with (obj_player)
{
	if (global.cam_target == 0)
	{
		uc_set_target_position(x, y);
	}
}