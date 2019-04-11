///@desc Moves the ES list up and down and why am I describing this to myself. It's litteraly the name of the script
///@args Dirrection Up (true) or Down (false)
///@args ListManager Give me the instance of the ListManager plz

//Get the arguments in some nice, cosy temp var
var Dirrection = argument0;
var ListCubeInstances = argument1.ListInstances;

//TODO : Make it stop at the end
//TODO : Animate it?

//some more vars
var MovementLength = sprite_get_height(spr_ZoneHitbox_ESList);


switch (Dirrection) { //true = UP; false = DOWN
	case (true) : {
		if !(ListCubeInstances[array_length_1d(ListCubeInstances) - 1].y <= inst_ES_BottomBorder.y) {
			for (var i=0; i < array_length_1d(ListCubeInstances); i++) {
				ListCubeInstances[i].y = ListCubeInstances[i].y - MovementLength;
			}
		} else {
			show_debug_message("Can't go --down-- UP and there is no animations");
		}
		break;
	}
	case (false) : {
		
		if !(ListCubeInstances[0].y = inst_ES_TopBorder.y) {
			for (var i=0; i < array_length_1d(ListCubeInstances); i++) {
				ListCubeInstances[i].y = ListCubeInstances[i].y + MovementLength;
			}
		} else {
			show_debug_message("Can't go down and there is no animations");
		}
		break;
	}
}

