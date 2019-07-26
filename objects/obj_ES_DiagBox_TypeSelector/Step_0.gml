/// @description The actual create event
if !(HasInit) {
	HasInit = true;
	
	instance_create_layer(x,y,"Instances_AboveDim3",obj_ES_DialogBox_TypeSelectorBorder); //create the border
	instance_create_layer(x + 264,y + 304,"Instances_AboveDim4",obj_ES_DialogBox_TypeSelectorSubmit);
	instance_create_layer(x + 144,y + 32,"Instances_AboveDim2",obj_ES_DialogBox_TypeSelectorManager); //The list manager for this DiagBox
}
