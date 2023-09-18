/// @description 문 제어
// 이 에디터에 코드를 작성할 수 있습니다

if (global.sig[sig] && !sig_index)
{
	sig_index = true;
	alarm[1] = 5;
}

if (!global.sig[sig] && sig_index)
{
	sig_index = false;
	alarm[2] = 5;
}

