///@desc updates the SpellId data structure

//transfer needed global variables into local variables.
var SpellXmlLocation = global.GSpellsXmlLocation;
var dsSpellsXml = global.GdsSpellsXml;

//Clear everything since we are doing this from scratch
ds_list_clear(dsSpellsXml);