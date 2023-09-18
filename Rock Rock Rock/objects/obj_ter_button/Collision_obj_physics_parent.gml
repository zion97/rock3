/// @description 물리 오브젝트와 충돌
// 이 에디터에 코드를 작성할 수 있습니다
if (other.x > bbox_left && other.x < bbox_right)
{
	sig_index = true;
	
	other.is_tile	= false;
	other.y			= y - 4;
}

