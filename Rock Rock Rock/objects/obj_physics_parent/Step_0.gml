/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (global.pause == 0)	//일시정지가 아닌 경우
{
	image_speed = 1;	//스프라이트 재생속도 1
	timeline_running = true;	//타임라인 활성화
	sc_physics_step();	//물리 처리 함수 실행
	step_sc();			//자식 오브젝트 사용자 지정 함수 실행
}
else					//일시정지인 경우
{
	image_speed = 0;	//스프라이트 재생속도 0
	timeline_running = false;	//타임라인 비활성화
}



