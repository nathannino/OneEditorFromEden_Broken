///@desc Set all ds for the editor (Main script of the breakthecode section)

var SpellXmlLocation = global.GSpellsXmlLocation;
var ArtifactsXmlLocation = global.GArtifactsXmlLocation;

//create the ds_list
global.GdsSpellsXml = ds_list_create();
global.GdsArtifactsXml = ds_list_create();

//make them easier for this script to do
var dsSpellsXml = global.GdsSpellsXml;
var dsArtifactsXml = global.GdsArtifactsXml;

//empty them
ds_list_empty(dsSpellsXml);
ds_list_empty(dsArtifactsXml);

//Initialize the current list variable
global.GCurrentList = undefined;

//execute the side stuff
//Spells.xml
if !(SpellXmlLocation == undefined) {
	scr_OEFE_breakthecode_getspellids();
	if (global.GCurrentList == undefined) {
		global.GCurrentList = "Spells.xml";
	}
}
//Artifacts.xml
if !(ArtifactsXmlLocation == undefined) {
	scr_OEFE_breakthecode_getartifactsids();
	if (global.GCurrentList == undefined) {
		global.GCurrentList = "Artifacts.xml";
	}	
}