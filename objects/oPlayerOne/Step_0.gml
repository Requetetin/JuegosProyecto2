/// playerMvmt


if (global.active){
var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);
var rope = keyboard_check(ord("Q"));
if (xMvmnt != 0) image_xscale = xMvmnt;

xSpd = xMvmnt * spd;
ySpd++;

	


	if (isGrounded) {
		if (xMvmnt != 0) { sprite_index = sPlayerRun; }
		else { sprite_index = sPlayerIdle; }
		if (jump) {
			ySpd = -11;
		}
	
	
	}else {
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

	if (place_meeting(x, y + ySpd, oFloor)) {
		ySpd = 0;
	
	}
	
	
	
	y += ySpd;
}