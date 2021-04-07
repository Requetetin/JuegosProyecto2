/// playerMvmt


if (!global.active){
var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);
var jetpack = keyboard_check(ord("Q"));
if (xMvmnt != 0) image_xscale = xMvmnt;

xSpd = xMvmnt * spd;
ySpd++;
	
	
	
	if (jetpack){
		// esto simula el tiempo
		// por cuanto tiempo esta elevado saber pero ya es algo
		timer += 5;
		if (timer < 2000){
			
			// cambiar sprite con jetpack
			ySpd = -1;
		}
	}else{
		timer = 0
		// sprite cayendo
	}

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
		
	}

	x += xSpd;

	if (place_meeting(x, y + ySpd, oFloor)) {
		ySpd = 0;
	
	}
	
	
	
	y += ySpd;
}