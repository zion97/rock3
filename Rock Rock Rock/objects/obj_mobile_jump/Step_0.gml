/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (sc_mobile_key() != -1)
{
	if (global.key[2] == 0)			global.key[2]	= 1;
	else if (global.key[2] == 1)	global.key[2]	= 2;
}
else
{
	global.key[2]	= 0;
}









