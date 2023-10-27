/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (sc_mobile_key() != -1)
{
	if (global.key[3] == 0)			global.key[3]	= 1;
	else if (global.key[3] == 1)	global.key[3]	= 2;
}
else
{
	global.key[3]	= 0;
}









