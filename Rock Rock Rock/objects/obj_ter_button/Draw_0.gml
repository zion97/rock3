/// @description 색상 및 본인 스프라이트 표시
// 이 에디터에 코드를 작성할 수 있습니다
var _y = 0;
if (sig_index) _y = 4;

draw_set_color(sig_color);
draw_rectangle(x-11, y-8+_y, x+10, y-7+_y, false);
draw_self();


