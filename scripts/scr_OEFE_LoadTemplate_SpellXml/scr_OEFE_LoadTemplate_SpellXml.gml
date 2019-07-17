///@desc Load the ini file for the Spell xml editor
///@args Element The name of the current element
///@args Layer The layer of the current tab

//Get variables
var SelectedElement = argument0;
var LayerName = argument1;
//var ModName = argument2; //uncomment when ModName can be changed
var ModName = "ModName"


//TODO : Create Default Template
ini_open("Templates/SpellsXml.ini");
//Create default template
{
	if !(ini_section_exists("ini")) {
		#region Write the default template
			ini_write_real("ini","ModuleAmount",2);
			#region Module 0
				ini_write_string("Module0","ModuleName","TestModule");
				ini_write_real("Module0","YPosition",0);
				ini_write_string("Module0","ElementName","Name");
			#endregion
			#region Module 1
				ini_write_string("Module1","ModuleName","BottomModule");
				ini_write_real("Module1","YPosition",100);
			#endregion
		#endregion
	}
}

for (var i=0;i<ini_read_real("ini","ModuleAmount",0);i++) {
	var ModuleType = ini_read_string("Module"+string(i),"ModuleName","ErrorModule");
	switch (ModuleType) {
		#region ErrorModule
		case "ErrorModule" : {
			show_error("The Module was not found or was set to ErrorModule. That is bad",true)
		}
		#endregion
		#region TestModule
		case "TestModule" : {
			//Code for TestModule v2
			show_debug_message("Found TestModule");
			instance_create_layer(x,y,LayerName,obj_EE_Module_TestModule);
		}
		#endregion
	}
}

ini_close();
