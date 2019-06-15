///@desc The Script to Test stuff using TestModule v1
///@args SelectedElement The selected element
///@args LookingElement The element to look at
///@args IdType The type of file opened

//TODO : Make it possible for all element types to be used

//arguments
var ModName = argument3;
var SelectedElement = argument0;
var LookingElement = argument1;
var IdType = argument2;

//Local var needed for file reading
var IsSelectedElement = false;
var IsLookingElement = false;
var FoundLookingElement = false;



DerpXmlRead_OpenFile("ModFiles\\" + ModName + "\\Spells.xml");

while DerpXmlRead_Read() {
	switch DerpXmlRead_CurType() {
		case DerpXmlType_OpenTag :
			var TagValue = DerpXmlRead_CurValue();
			#region Spell
			show_debug_message(TagValue);
			if (TagValue == "Spell" && DerpXmlRead_CurGetAttribute("itemID") == SelectedElement) {
				IsSelectedElement = true;
				show_debug_message("found the selected element");
			} 
			else if (TagValue == "Spell" && DerpXmlRead_CurGetAttribute("itemID") != SelectedElement) {
				IsSelectedElement = false;
			}
			#endregion
			#region LookingElement
			else if (TagValue == LookingElement && IsSelectedElement == true) {
				IsLookingElement = true;
				show_debug_message("found the specific element");
			}
			#endregion
			#region else
			else {
				IsLookingElement = false;
			}
			#endregion
			break;
		case DerpXmlType_Text :
			if (IsLookingElement) {
				show_debug_message("success!");
				show_message(LookingElement + "'s text is : " + DerpXmlRead_CurValue());
				FoundLookingElement = true;
			}
			break;
	}
}

DerpXmlRead_CloseFile();
