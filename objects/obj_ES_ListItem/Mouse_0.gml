/// @description Change who is currently selected

if (collision_rectangle(x,y,x+1,y+1,obj_ES_ListManager,false,true)) {
	obj_ES_ListManager.CurrentSelected = self;
}