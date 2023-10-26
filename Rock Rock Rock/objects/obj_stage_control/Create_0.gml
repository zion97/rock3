/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

instance_create_depth(0, 0, 0, Camera);
uc_set_mode(0);

is_clear	= false;
index_mob	= 0;

var _ui_y	= uc_get_view_height() - 50;

instance_create_depth(80, _ui_y, 0, obj_mobile_stick);

with (obj_mobile_button)
{
	alarm[0] = 1;
}