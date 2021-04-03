/// playerMvmt

var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);
var rope = keyboard_check(ord("E"));
var jetpack = keyboard_check(ord("R"));
if (xMvmnt != 0) image_xscale = xMvmnt;

xSpd = xMvmnt * spd;
ySpd++;
// aqui hay que ponerle que solo lo haga por un tiempo
// y esta habilidad es del otro personaje no de este
if (jetpack){
	// esto del tiempo no funciona :(
	timer = room_speed * 5;
	if (timer > 0){
		timer --;
		// cambiar sprite con jetpack
		ySpd = -1;
	}
}else{
	// sprite cayendo
	ySpd = 1;
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