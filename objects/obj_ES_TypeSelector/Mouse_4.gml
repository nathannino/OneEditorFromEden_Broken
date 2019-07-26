/// @description Disactivate everything

var PauseSprite = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);

instance_deactivate_all(true); //disactivate everything except self, since we have stuff to finish

//Create the needed stuff
{
	var BlackDim = instance_create_layer(0,0,"Instances_Dim",obj_tools_blackdim);
	var PauseBG = instance_create_layer(0,0,"Instances_PauseBG",obj_tools_PauseBG);
	var DialogBox = instance_create_layer(320,192,"Instances_AboveDim1",obj_ES_DiagBox_TypeSelector);
}

//Deal with the BG
PauseBG.sprite_index = PauseSprite;

//Send everything to the new main code
DialogBox.SentPauseSprite = PauseSprite;
DialogBox.SentBlackDim = BlackDim;
DialogBox.SentPauseBG = PauseBG;

//disactivate self after that hard work
instance_deactivate_object(self);