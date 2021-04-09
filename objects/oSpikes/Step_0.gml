var playerOne = place_meeting(x, y, oPlayerOne);
var playerTwo = place_meeting(x, y, oPlayerTwo);
var limit = 15;

if(playerOne || playerTwo){
	if(playerOne) {
		oPlayerOne.sprite_index = sDeath;
		timeToDeath++;
		if(timeToDeath > limit){
			room_restart();
		}
	}else {
		oPlayerTwo.sprite_index = sDeath;
		timeToDeath++;
		if(timeToDeath > limit){
			room_restart();
		}
	}	
}