// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mobile_key()
{
	if device_mouse_check_button(0, mb_left)
	{
	    if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
		{
			return 0;
		}
	}
	
	if device_mouse_check_button(1, mb_left)
	{
	    if (position_meeting(device_mouse_x_to_gui(1), device_mouse_y_to_gui(1), id))
		{
			return 1;
		}
	}
	
	if device_mouse_check_button(2, mb_left)
	{
	    if (position_meeting(device_mouse_x_to_gui(2), device_mouse_y_to_gui(2), id))
		{
			return 2;
		}
	}
	
	return -1;
}

function sc_mobile_stick()
{
	if device_mouse_check_button_pressed(0, mb_left)
	{
	    if (device_mouse_x_to_gui(0) > (0 + global.mobile_dir*320) 
			&& device_mouse_x_to_gui(0) < (320 + global.mobile_dir*320))
		{
			return 0;
		}
	}
	
	if device_mouse_check_button_pressed(1, mb_left)
	{
	    if (device_mouse_x_to_gui(1) > (0 + global.mobile_dir*320) 
			&& device_mouse_x_to_gui(1) < (320 + global.mobile_dir*320))
		{
			return 1;
		}
	}
	
	if device_mouse_check_button_pressed(2, mb_left)
	{
	    if (device_mouse_x_to_gui(2) > (0 + global.mobile_dir*320) 
			&& device_mouse_x_to_gui(2) < (320 + global.mobile_dir*320))
		{
			return 2;
		}
	}
	
	return -1;
}