/// @description Init it here


if (ReadyToInit && !initializedTextbox){
	surf = surface_create(x + sprite_width, y + sprite_height);
	ReadyToInit = false;
	initializedTextbox = true;
}
