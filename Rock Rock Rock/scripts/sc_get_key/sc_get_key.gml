// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_get_key(_keyboard, _gamepad, _mode = 0){
	var _slot = global.pad_slot;
	if (_mode == 0) {
		if (keyboard_check_pressed(_keyboard))				return true;
		if (gamepad_button_check_pressed(_slot, _gamepad))	return true;
		return false;
	}
	else if (_mode == 1) {
		if (keyboard_check(_keyboard))				return true;
		if (gamepad_button_check(_slot, _gamepad))	return true;
		return false;
	}
}