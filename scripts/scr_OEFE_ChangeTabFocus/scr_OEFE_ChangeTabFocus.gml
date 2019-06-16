///@desc Change the focused tab (Including other stuff)
///@args TabsManager The tab manager
///@args TabId The tab ID to change to
///@args TabList The list of tabs

//Why must we argue(ments)
var TabsManager = argument0;
var TabId = argument1;
var TabList = argument2;

//Other good variables
var CurrentIndex = ds_list_find_index(TabList,TabId);

//Works in two different ways depending on if we already have a tab or not
if (TabsManager.TabSelected == undefined) { //if no tabs are active
	TabsManager.TabSelected = CurrentIndex;
	instance_activate_layer("EE_Layer" + string(CurrentIndex));
} else { //if a tab is already active
	instance_deactivate_layer("EE_Layer" + string(TabsManager.TabSelected));
	TabsManager.TabSelected = CurrentIndex;
	instance_activate_layer("EE_Layer" = string(CurrentIndex));
}