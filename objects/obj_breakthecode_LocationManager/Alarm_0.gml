/// @description Do everything else

//set the location for everything
{
	//spells.xml
	if (file_exists(FolderLocation + "/Spells.xml")) {
		show_debug_message("Spells.xml exists");
		global.GSpellsXmlLocation = FolderLocation + "/Spells.xml";
	} else {
		show_debug_message("Spells.xml does not exist");
		global.GSpellsXmlLocation = undefined;
	}
}

//Change rooms to the main code breaker
room_goto_next();
