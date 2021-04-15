var oneCheck = place_meeting(x, y, oPlayerOne);
var twoCheck = place_meeting(x, y, oPlayerTwo);

if (oneCheck || twoCheck){
	room_goto(winScreen);
}