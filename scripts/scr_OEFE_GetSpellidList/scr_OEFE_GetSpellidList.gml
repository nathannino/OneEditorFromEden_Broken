///@desc Get the spell id of all spells in a nice array
///@args ModName (Hope to change it to a global, but not sure if I should)

//Xml reading uses DerpXmlExample_ReadComplex as a example for the reading format

var ModName = argument0;

if (file_exists("ModFiles\\" + ModName + "\\Spells.xml")) {
	show_debug_message("Yes!")
}

DerpXmlRead_OpenFile("ModFiles\\" + ModName + "\\Spells.xml");

while DerpXmlRead_Read() {
	switch DerpXmlRead_CurType() {
		case "Spell" :	
	}
}