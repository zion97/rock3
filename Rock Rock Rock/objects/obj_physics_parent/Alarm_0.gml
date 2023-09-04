/// @description 메인 스텝
// 이 에디터에 코드를 작성할 수 있습니다
if (global.pause == 0)
{
	image_speed = 1;
	timeline_running = true;
	sc_physics_step();
	step_sc();
}
else
{
	image_speed = 0;
	timeline_running = false;
}
alarm[0] = 1;