//-------------------------------------
// Variables that change the appearence
//-------------------------------------

//How many steps that the cursor should be visible/invisible
cursorBlinkTime = room_speed / 2;
//The color of the text
textColor = c_black;
//The transparancy of the text
textAlpha = 1;
//What text the textbox should have when created
text = "";
//The transparancy of the selected area
selectionAlpha = .4;
//The color of the selected area
selectionColor = c_blue;
//The transparancy of the selected area when the textbox loses focus
selectionUnfocusAlpha = .4;
//The color of the selected area when the textbox loses focus
selectionUnfocusColor = c_gray;

//----------------------------------------
// Variables that needs to be initialized 
//----------------------------------------

selected = false;
showCursor = false;
cursor = 0;
cursorPosition = 0;
selectedStart = -1;
keyDownTime = 0;
keyDownPrevious = 0;
offset = 0;
dragSelecting = false;
surf = surface_create(x + sprite_width, y + sprite_height);

