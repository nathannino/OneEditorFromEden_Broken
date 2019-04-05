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

show_debug_message("hi");

switch (Dirrection) {
	case (true) : {
		show_debug_message("yes");
		for (var i=0; i < array_length_1d(ListCubeInstances); i++) {
			ListCubeInstances[i].y = ListCubeInstances[i].y - MovementLength;
		}
		break;
	}
	case (false) : {
		for (var i=0; i < array_length_1d(ListCubeInstances); i++) {
			ListCubeInstances[i].y = ListCubeInstances[i].y + MovementLength;
		}
		break;
	}
}

