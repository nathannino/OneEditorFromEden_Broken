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
Ymultiplicator = 32;

if !(OldListInstances[0] == pointer_null) { //Delete the old objects
	//Do this part later, just crash for now
	show_error("The Eden foundation is sorry for any inconviniences that a temporary crash message that stayed in the game may have caused you", true);
}

for (i = 0; i < array_length_1d(ES_ListArray); i++) {
	var SpawnX = BaseX;
	var SpawnY = BaseY + (Ymultiplicator * i);
	var CreatedInstance = instance_create_layer(SpawnX,SpawnY,"Instances_ES_Items",obj_ES_ListItem);
	
	CreatedInstance.SetType = IdType;
	CreatedInstance.SetId = ES_ListArray[i];
	NewListInstances[i] = CreatedInstance;
}

return NewListInstances;
