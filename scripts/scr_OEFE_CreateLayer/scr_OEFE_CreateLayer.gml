///@desc Create a layer associated to a tab
///@args ElementType
///@args ElementID
///@args NewTab

//get the arguments into a nice, tidy temp var

var ElementType = argument0;
var ElementID = argument1;
var NewTab = argument2;

var TabList = inst_TB_TabsManager.TabList;

var LayerName = layer_create(layer_get_depth("Instance_ElementEditor") + 1, "EE_Layer" + string(ds_list_find_index(TabList,NewTab))); //create the layer
NewTab.LayerName = LayerName; //give the layer to the NewTab

//TODO : Change focus
scr_OEFE_ChangeTabFocus(inst_TB_TabsManager, NewTab, TabList);

//add the TemplateManager to create the template for us
NewTab.TemplateManager = instance_create_layer(0,96,LayerName,obj_EE_TemplateManager);