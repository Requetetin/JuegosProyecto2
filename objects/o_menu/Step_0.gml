var up, down, accept;

up			= keyboard_check_pressed(vk_up);
down		= keyboard_check_pressed(vk_down);
accept		= keyboard_check_pressed(ord("F"));


if up and image_index > 0 {
	image_index --;
}

if down and image_index < image_number-1 {
	image_index++;
}


if image_index == 0 and accept {
	room_goto(Game);
}

if image_index == 2 and accept {
	game_end();
}
