/// playerMvmt


if(global.active){
	sprite_index = sTransparent;
}
if (!global.active){
var coyoteTime = 8;
var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);
var onPlayer = place_meeting(x, y+1, oPlayerTwo);
var rope = keyboard_check(vk_shift);
if (xMvmnt != 0) image_xscale = xMvmnt;
var checkDoor = place_meeting(x + xSpd, y, Door);

xSpd = xMvmnt * spd;
ySpd++;

 if(checkDoor){
		room_goto(targetRoom); 
 }


	if (isGrounded || onPlayer) {
		coyoteTime = 8;
		if (coyoteTime > 0){
			if (jump) {
				ySpd = -11;
			}
		}
		if (xMvmnt != 0) { sprite_index = sPlayerRun; }
		else { sprite_index = sPlayerIdle; }
	
	
	}else {
		coyoteTime -= 1;
	 //sprite_index = sPlayerJump;	
	}

	if (place_meeting(x + xSpd, y, oFloor)) {
		xSpd = 0;
		// esto es para simular escalar
		if(rope){	
			ySpd = -1;
			// cambiar a un sprite de escalar
			sprite_index = sPlayerRun
		}
	}

	x += xSpd;

	if (place_meeting(x, y + ySpd, oFloor) || place_meeting(x, y + ySpd, oPlayerTwo)) {
		ySpd = 0;
	
	}
	
	
	y += ySpd;
}