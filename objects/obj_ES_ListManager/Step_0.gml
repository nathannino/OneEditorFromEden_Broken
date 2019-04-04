/// @description Listen to var changes because I don't know how to use user events

/// TODO :
// Get the actual ModName

if (ReadXml_SpellId) {
	ReadXml_SpellId = false;
	ES_ListArray = scr_OEFE_GetSpellidList("ModName");
	
	for (i=0; i < array_length_1d(ES_ListArray); i++) {
		show_debug_message(i);
		show_debug_message(ES_ListArray[i]);
	}
	scr_OEFE_UpdateList(ListInstances, ES_ListArray, IdType, self);
}
