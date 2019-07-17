/// @description Here is where you init stuff
// You can write your code in this editor

//Set those variables
ElementID = TabTiedTo.ElementID;
ElementType = TabTiedTo.ElementType;
LayerName = TabTiedTo.LayerName;

//Create the template!
switch ElementType  {
	case "Spell" : {
		scr_OEFE_LoadTemplate_SpellXml(ElementID,LayerName);
	}
}