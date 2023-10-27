/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (sc_mobile_key() != -1)
{
	global.cam_y = 1;
	if (global.stage_index < 8)
	{
		global.cam_x	= 0;
	}
	
	room_goto(rm_stage_select);
}









