/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

point_x = x;

if (!is_active)
{
	global.key[0]	= 0;
	global.key[1]	= 0;
	m_index = sc_mobile_stick();
	if (m_index != -1)
	{
		is_active = true;
		x	= device_mouse_x_to_gui(m_index);
		y	= device_mouse_y_to_gui(m_index);
		index_alp	= 0.8;
	}
}
if (!device_mouse_check_button(m_index, mb_left))
{
	is_active	= false;
	alarm[0]	= 1;
	index_alp	= 0.4;
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
		if (x > _mouse_x)
		{
			global.key[1]	= 0;
			
			if (global.key[0] == 0)			global.key[0]	= 1;
			else if (global.key[0] == 1)	global.key[0]	= 2;
		}
		else if (x < _mouse_x)
		{
			global.key[0]	= 0;
			
			if (global.key[1] == 0)			global.key[1]	= 1;
			else if (global.key[1] == 1)	global.key[1]	= 2;
		}
	}
	if (_dist > 50)
	{
		point_x = x + _dir*50;
	}
}










