/// @description Get everything sorted out

global.GFolderLocation = inst_textbox_location.text; //get the location of the folder
FolderLocation = global.GFolderLocation;
show_debug_message("location is " + FolderLocation);

//Check if the folder exist
if (directory_exists(FolderLocation)) {
	show_debug_message("folder found, starting editor");
	alarm[0] = 1; //anti change room when not ready procedure
} else if !(debugmode) { //if folder not found and debugmode = false
	show_message("Error : Folder not found");
	room_restart();
} else if (FolderLocation == "") { //Activate Debug Mode Shortcut when textbox is empty
	show_message("debug mode active, defaulting to %appdata%/One_Editor_From_Eden/ModFiles/ModName");
	global.GFolderLocation = "ModFiles/ModName";
	FolderLocation = global.GFolderLocation;
	
	if (directory_exists(FolderLocation)) { //Check again just to be sure
		show_debug_message("folder found, starting editor");
		alarm[0] = 1; //anti change room when not ready procedure
	} else {
		show_message("Error : Folder not found (also, report that debug mode is active)");
		room_restart();
	}
	
	show_debug_message("location is " + FolderLocation);
} else { //if folder not found and debugmode = true
	show_message("Error : Folder not found (also, report that debug mode is active)");
	room_restart();
}

