///@desc Get the spell id of all spells in a nice array
///@args ModName (Hope to change it to a global, but not sure if I should)

//Xml reading uses DerpXmlExample_ReadComplex as a example for the reading format

var ModName = argument0;
var output;
var SpellIdAmount = 0; //Setting it to 0 by default

if !(file_exists("ModFiles\\" + ModName + "\\Spells.xml")) {
	show_error("Spell.xml not found, please report", false);
}

DerpXmlRead_OpenFile("ModFiles\\" + ModName + "\\Spells.xml");

while DerpXmlRead_Read() {
	show_debug_message("bye");
	switch DerpXmlRead_CurType() {
		case DerpXmlType_OpenTag :
			show_debug_message("hi")
			switch DerpXmlRead_CurValue() {
				case "Spell" : {
					output[SpellIdAmount] = DerpXmlRead_CurGetAttribute("itemID");
					show_debug_message("itemID")
					SpellIdAmount++;
				}
			}
	}
}
DerpXmlRead_CloseFile();

return output;
//for (i=0; i==SpellIdAmount; i++) {
//	show_debug_message(output[i]);
//}
