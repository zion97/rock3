/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (is_clear)
{
	draw_set_color(c_black);
	draw_set_alpha(0.4);
	draw_rectangle(-5, -5, 1925, 1085, false);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(spr_stage_clear, 0, uc_get_view_width()/2, 120);
}








