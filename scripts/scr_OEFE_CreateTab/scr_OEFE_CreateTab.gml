///@desc Create a tab and open it
///@args type The type of the element
///@args ID The ID of the element

var TabList = inst_TB_TabsManager.TabList;
var TabAmount = inst_TB_TabsManager.TabAmount;

//get into multiple arguments, because you like to fight or whatever.
var ElementType = argument0;
var ElementID = argument1;

//Create the tab
var NewTab = instance_create_layer(inst_TB_TabsManager.x,inst_TB_TabsManager.y,"Instances_TB_Tabs",obj_TB_Tab);

//give name to tab
NewTab.ElementType = ElementType;
NewTab.ElementID = ElementID;

//give it some default stuff to work with
NewTab.MaximumScroll = 0;

//add it to the end of the list
ds_list_add(TabList,NewTab);

//time to create a tab
scr_OEFE_CreateLayer(ElementType,ElementID,NewTab);