/// @description Do everything else

//set the location for everything
var FoundFile = false;

{
	//Spells.xml
	if (file_exists(FolderLocation + "/Spells.xml")) {
		show_debug_message("Spells.xml exists");
		global.GSpellsXmlLocation = FolderLocation + "/Spells.xml";
		FoundFile = true;
	} else {
		show_debug_message("Spells.xml does not exist");
		global.GSpellsXmlLocation = undefined;
	}
	//Artifacts.xml
	if (file_exists(FolderLocation + "/Artifacts.xml")) {
		show_debug_message("Artifacts.xml exists");
		global.GArtifactsXmlLocation = FolderLocation + "/Artifacts.xml";
		FoundFile = true;
	} else {
		show_debug_message("Artifacts.xml does not exist");
		global.GArtifactsXmlLocation = undefined;
	}
}

//Change rooms to the main code breaker
if (FoundFile) {
	room_goto_next();
} else {
	show_message("Error : No mod files found at location");
	room_restart();
}