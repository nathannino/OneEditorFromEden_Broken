///@desc Updates the list with the info ~~you~~ the modder need to open a editor window
///@args ListInstances Gets the old instances to remove it
///@args ES_ListArray Gets the list of ids
///@args IdType Gets the type of ids
///@args RunningInstance Gets the instance that called the code

var OldListInstances = argument0;
var NewListInstances;
var ES_ListArray = argument1;
var IdType = argument2;
var RunningInstance = argument3;

//positionning
BaseX = RunningInstance.x;
BaseY = RunningInstance.y;
Ymultiplicator = sprite_get_height(spr_ZoneHitbox_ESList);

if !(OldListInstances[0] == pointer_null) { //Delete the old objects
	for (i = 0; i < array_length_1d(OldListInstances); i++) {
		instance_destroy(OldListInstances[i]);
	}
}

for (i = 0; i < array_length_1d(ES_ListArray); i++) {
	var SpawnX = BaseX;
	var SpawnY = BaseY + (Ymultiplicator * i);
	var CreatedInstance = instance_create_layer(SpawnX,SpawnY,"Instances_ES_Items",obj_ES_ListItem);
	
	CreatedInstance.SetType = IdType;
	CreatedInstance.SetId = ES_ListArray[i];
	CreatedInstance.SetPosition = i;
	NewListInstances[i] = CreatedInstance;
}

return NewListInstances;
