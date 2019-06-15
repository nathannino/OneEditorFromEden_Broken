/// @description Send More info to the EE


if (collision_rectangle(x,y,x+1,y+1,obj_ES_ListManager,false,true)) {
	//Yeah, no. EE is not ready, so let's just test some stuff real quick
	show_message("The EE (Eden Editor) is not currently ready, but you clicked on " + SetId + ". This is a " + SetType);

	obj_ES_ListManager.CurrentSelected = self;
}