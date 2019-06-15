///@desc Load the ini file for the Spell xml editor
///@args Element The name of the current element

//Get variables
var SelectedElement = argument0;
var IdType = argument1;
//var ModName = argument2; //uncomment when ModName can be changed
var ModName = "ModName"

//TODO : Create Default Template
ini_open("Templates/SpellsXml.ini");
//Create default template
{
	if !(ini_section_exists("ini")) {
		#region Write the default template
			ini_write_real("ini","ModuleAmount",1);
			#region Module 0
				ini_write_string("Module0","ModuleName","TestModule");
				ini_write_string("Module0","ElementName","Name");
			#endregion
		#endregion
	}
}
ini_read_real("ini","ModuleAmount",1); //get the amount of modules

for (var i=0;i<1;i++) {
	var ModuleType = ini_read_string("Module"+string(i),"ModuleName","ErrorModule");
	switch (ModuleType) {
		case "ErrorModule" : {
			show_error("The Module was not found or was set to ErrorModule",true)
		}
		case "TestModule" : {
			//Test code for test module v1
			show_debug_message("Found TestModule");
			scr_OEFE_EE_Module_TestModule(SelectedElement,ini_read_string("Module"+string(i),"ElementName","ThisIsABadError"),IdType,ModName);
		}
	}
}

ini_close();
