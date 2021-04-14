/// playerMvmt


if (global.active){
var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);
var onPlayer = place_meeting(x, y+1, oPlayerOne);
var jetpack = keyboard_check(ord("C"));
if (xMvmnt != 0) image_xscale = xMvmnt;

xSpd = xMvmnt * spd;
ySpd++;
	
	
	
	if (jetpack && (!isGrounded || !onPlayer)){
		// esto simula el tiempo
		// por cuanto tiempo esta elevado saber pero ya es algo
		timer += 5;
		if (timer < 1000){
			
			// cambiar sprite con jetpack
			ySpd = 0;
		}
	}else{
		timer = 0
		// sprite cayendo
	}

	if (isGrounded || onPlayer) {
		if (xMvmnt != 0) { sprite_index = sSecondRun; }
		else { sprite_index = sSecondIdle; }
		if (jump) {
			ySpd = -11;
		}
	
	
	}else {
	 //sprite_index = sSecondJump;	
	}

	if (place_meeting(x + xSpd, y, oFloor)) {
		xSpd = 0;
		
	}

	x += xSpd;

	if (place_meeting(x, y + ySpd, oFloor) || place_meeting(x, y + ySpd, oPlayerOne)) {
		ySpd = 0;
	
	}
	
	y += ySpd;
	
}