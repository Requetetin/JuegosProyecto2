/// playerMvmt

var xMvmnt = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var isGrounded = place_meeting(x, y+1, oFloor);

if (xMvmnt != 0) image_xscale = xMvmnt;

xSpd = xMvmnt * spd;
ySpd++;

if (isGrounded) {
	if (jump) {
		ySpd = -11;
	}
}

if (place_meeting(x + xSpd, y, oFloor)) {
	xSpd = 0;
}

x += xSpd;

if (place_meeting(x, y + ySpd, oFloor)) {
	ySpd = 0;
}
y += ySpd;