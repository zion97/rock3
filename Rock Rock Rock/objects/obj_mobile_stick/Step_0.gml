/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

point_x = x;

if (!is_active)
{
	m_index = sc_mobile_key();
	if (m_index != -1)
	{
		is_active = true;
	}
}
if (!device_mouse_check_button(m_index, mb_left))
{
	is_active = false;
}

if (is_active)
{
	var _mouse_x	= device_mouse_x_to_gui(m_index);
	var _dist		= abs(_mouse_x - x);
	var _dir		= 1;
	if (x > _mouse_x)	_dir = -1;
	
	point_x = _mouse_x;
	
	if (_dist > 20)
	{
		
	}
	if (_dist > 50)
	{
		point_x = x + _dir*50;
	}
}










