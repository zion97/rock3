// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	var _tile_id	= layer_tilemap_get_id("tile_sprite");
	var _bottom1	= tilemap_get_at_pixel(_tile_id, x, bbox_bottom);
	var _bottom2	= tilemap_get_at_pixel(_tile_id, x, bbox_bottom - 8 );
	var _top		= tilemap_get_at_pixel(_tile_id, x, bbox_top);
	var _left1		= tilemap_get_at_pixel(_tile_id, bbox_left, bbox_bottom - 8 );
	var _left2		= tilemap_get_at_pixel(_tile_id, bbox_left, bbox_top + 8 );
	var _right1		= tilemap_get_at_pixel(_tile_id, bbox_right, bbox_bottom - 8 );
	var _right2		= tilemap_get_at_pixel(_tile_id, bbox_right, bbox_top + 8 );
	var _middle		= tilemap_get_at_pixel(_tile_id, x, (bbox_bottom+bbox_top)/2 );
	
	image_xscale	= dir;
	
	//증력 적용
	speed_y += grav_index;
	
	//오브젝트와 바닥 충돌
	if ( ( _bottom1 == 2 && _bottom2 != 2 ) || sc_get_tile(_bottom1) == 1 ) 
	{
		is_jump = false;
	}
	else 
	{
		is_jump = true;
	}

	if ( !is_jump && speed_y > 0 ) {
		speed_y = 0;
		if ( bbox_bottom % 16 > 0 ) y -= bbox_bottom % 16;
	}

	//오브젝트와 천장 충돌
	if ( sc_get_tile(_top) == 1 ) { if ( speed_y < 0 ) speed_y = 2; }
	
	
	//3단계 블록과의 좌우 충돌
	if ( ( sc_get_tile(_left1) == 1 || sc_get_tile(_left2) == 1) )		{ 
		if ( speed_x < 0 ) speed_x = 0;
		//if (_middle == 3) x += 5;
	}
	if ( ( sc_get_tile(_right1) == 1 || sc_get_tile(_right2) == 1 ) )	{ 
		if ( speed_x > 0 ) speed_x = 0; 
		//if (middle == 3 ) x -= 5;
	}
	
	//실제 좌표 이동
	x += speed_x;
	y += speed_y;
	
	//점프중이 아닐 때 정지
	if (!is_jump)	
	{
		speed_x = 0;
	}
}