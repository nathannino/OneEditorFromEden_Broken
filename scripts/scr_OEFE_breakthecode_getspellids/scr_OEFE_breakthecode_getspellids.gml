///@desc updates the SpellId data structure (to use when reverting to the local file)

//transfer needed global variables into local variables.
var SpellXmlLocation = global.GSpellsXmlLocation;
var dsSpellsXml = global.GdsSpellsXml;

//Clear everything since we are doing this from scratch
ds_list_clear(dsSpellsXml);

DerpXmlRead_OpenFile(SpellXmlLocation);

while DerpXmlRead_Read() {
	switch DerpXmlRead_CurType() {
		case DerpXmlType_OpenTag :
			switch DerpXmlRead_CurValue() {
				case "Spell" : {
					ds_list_add(dsSpellsXml,DerpXmlRead_CurGetAttribute("itemID"));
					
					//output[SpellIdAmount] = DerpXmlRead_CurGetAttribute("itemID");
					//show_debug_message("itemID")
					//SpellIdAmount++;
				}
			}
	}
}
DerpXmlRead_CloseFile();

//code testing
show_debug_message("-----Spells.xml-----");
for (var i = 0; i < ds_list_size(dsSpellsXml); i++;) {
	show_debug_message(ds_list_find_value(dsSpellsXml,i));
	show_debug_message("number is " + string(i));
}
show_debug_message("-----End of Spells.xml-----");