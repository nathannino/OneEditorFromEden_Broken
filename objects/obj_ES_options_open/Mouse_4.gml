/// @description Start creating all of the new stuff

//For now, we are only using names
//TODO : Add the layer system

//test code
if (inst_ES_ListManager.ES_ListType == "Spell") {
	scr_OEFE_LoadTemplate_SpellXml(inst_ES_ListManager.CurrentSelected.SetId,inst_ES_ListManager.CurrentSelected.SetType);
	show_debug_message("Clicked open");
}