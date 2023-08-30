// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	var _tile_id	= layer_tilemap_get_id("Tile_Collision");
	var _bottom1	= tilemap_get_at_pixel(_tile_id, x, bbox_bottom);
	var _bottom2	= tilemap_get_at_pixel(_tile_id, x, bbox_bottom - 16 );
	var _top		= tilemap_get_at_pixel(_tile_id, x, bbox_top);
	var _left1		= tilemap_get_at_pixel(_tile_id, bbox_left, bbox_bottom - 16 );
	var _left2		= tilemap_get_at_pixel(_tile_id, bbox_left, bbox_top + 16 );
	var _right1		= tilemap_get_at_pixel(_tile_id, bbox_right, bbox_bottom - 16 );
	var _right2		= tilemap_get_at_pixel(_tile_id, bbox_right, bbox_top + 16 );
	var _middle		= tilemap_get_at_pixel(_tile_id, x, (bbox_bottom+bbox_top)/2 );
	
	//증력 적용
	speed_y += grav_index;
	
	//오브젝트와 바닥 충돌
	if ( ( _bottom1 == 2 && _bottom2 != 2 ) || _bottom1 == 3 ) 
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
	if ( _top = 3 ) { if ( speed_y < 0 ) speed_y = 2; }
	
	
	//3단계 블록과의 좌우 충돌
	if ( ( _left1 == 3 || _left2 == 3) )		{ 
		if ( speed_x < 0 ) speed_x = 0;
		//if (_middle == 3) x += 5;
	}
	if ( ( _right1 == 3 || _right2 == 3 ) )	{ 
		if ( speed_x > 0 ) speed_x = 0; 
		//if (middle == 3 ) x -= 5;
	}
	
	x += speed_x;
	y += speed_y;
	
	if (!is_jump)	speed_x = 0;
}