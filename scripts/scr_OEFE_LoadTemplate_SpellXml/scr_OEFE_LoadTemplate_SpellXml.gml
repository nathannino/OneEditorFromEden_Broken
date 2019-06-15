///@desc Load the ini file for the Spell xml editor
///@args Element The name of the current element


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
	show_message("Yep, it works like that")
}

ini_close();
