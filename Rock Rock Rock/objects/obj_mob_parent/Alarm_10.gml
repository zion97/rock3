/// @description 사망 후 오브젝트 제거
// 이 에디터에 코드를 작성할 수 있습니다

image_alpha -= 0.015;

if (image_alpha > 0)
{
	alarm[10] = 1;
}
else
{
	instance_destroy();
}
