///@desc updates the ArtifactId data structure (to use when reverting to the local file)

//transfer needed global variables into local variables.
var ArtifactsXmlLocation = global.GArtifactsXmlLocation;
var dsArtifactsXml = global.GdsArtifactsXml;

//Clear everything since we are doing this from scratch
ds_list_clear(dsArtifactsXml);

DerpXmlRead_OpenFile(ArtifactsXmlLocation);

while DerpXmlRead_Read() {
	switch DerpXmlRead_CurType() {
		case DerpXmlType_OpenTag :
			switch DerpXmlRead_CurValue() {
				case "Artifact" : {
					ds_list_add(dsArtifactsXml,DerpXmlRead_CurGetAttribute("itemID"));
					
					//output[SpellIdAmount] = DerpXmlRead_CurGetAttribute("itemID");
					//show_debug_message("itemID")
					//SpellIdAmount++;
				}
			}
	}
}
DerpXmlRead_CloseFile();

//code testing
show_debug_message("-----Artifacts.xml-----");
for (var i = 0; i < ds_list_size(dsArtifactsXml); i++;) {
	show_debug_message(ds_list_find_value(dsArtifactsXml,i));
	show_debug_message("number is " + string(i));
}
show_debug_message("-----End of Artifacts.xml-----");