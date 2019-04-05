/// @description Focuses on Mouse Wheel input

if (mouse_wheel_up()) {
	switch (CurrentZone) {
		case ("ES") : {
			scr_OEFE_MoveList(true, inst_ES_ListManager);
		}
	}
} else if (mouse_wheel_down()) {
	switch (CurrentZone) {
		case ("ES") : {
			scr_OEFE_MoveList(false, inst_ES_ListManager);
		}
	}
	
}
