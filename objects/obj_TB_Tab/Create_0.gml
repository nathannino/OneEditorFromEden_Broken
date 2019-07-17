/// @description Name variables we can define later
// You can write your code in this editor

ElementID = undefined;
ElementName = undefined;
LayerName = undefined;

//Change some sprite stuff
image_speed = 0;
image_index = 0;

//also adding the fabled X button
//instance_create_layer(sprite_width - obj_TB_TabX.sprite_width,y,"Instances_TB_Tabs",obj_TB_TabX); //removed because it cannot read from a object that doesn't exist
instance_create_layer(sprite_width - 32,y,"Instances_TB_TabsX",obj_TB_TabX);
show_debug_message("Breakpoint here");