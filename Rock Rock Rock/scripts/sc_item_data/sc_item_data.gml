// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_item_data(){
	global.rock1_struct = new ItemStruct(obj_rock1, spr_rock1_get, spr_rock1_jump, 
		spr_rock1_run, spr_rock1_stand, spr_rock1_throw, 1);
		
	global.scissors1_struct = new ItemStruct(obj_scissors1, spr_scissors1_get, spr_scissors1_jump, 
		spr_scissors1_run, spr_scissors1_stand, spr_scissors1_throw, 2);
		
	global.paper1_struct = new ItemStruct(obj_paper1, spr_paper1_get, spr_paper1_jump, 
		spr_paper1_run, spr_paper1_stand, spr_paper1_throw, 3);
}