if ( keyboard_check_pressed( ord( "T" ) )) {
    turno += 1
   
	if(turno%2 == 0){
		global.active = true;
	}else{
	  global.active = false;
	}
}