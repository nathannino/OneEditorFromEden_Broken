/// @description Go look for the next thing and go there
// You can write your code in this editor {YES!!! I KNOW ALREADY}

var ListInstancesList = inst_ES_ListManager.ListInstances;
var CurrentUp;
var NextSelection = undefined;
var AmountToMove;

//get current ID
for (i = 0; i < array_length_1d(ListInstancesList); i++) {
	if (ListInstancesList[i].y == inst_ES_TopBorder.y) {
		CurrentUp = i;
	}
}

//Get Next Id
if !(ListInstancesList[0].y > inst_ES_TopBorder.y) { //Don't try to go lower then
	for (i = CurrentUp - 1; i >= 0; i--) {
		if (string_count(inst_ES_SearchBar.text, ListInstancesList[i].SetId) != 0) {
			NextSelection = i;
			break;
		}
	}
}

//Try upper numbers if nothing found
if (NextSelection == undefined) {
	for (i = array_length_1d(ListInstancesList) - 1; i > CurrentUp; i--) {
		if (string_count(inst_ES_SearchBar.text, ListInstancesList[i].SetId) != 0) {
			NextSelection = i;
			break;
		}
	}
}

//Moves as if we had the scroll wheel active
if (NextSelection != undefined) {
	//get the amount to move
	if (CurrentUp < NextSelection) {
		AmountToMove = NextSelection - CurrentUp;
		
		for (i = 0; i < AmountToMove; i++) {
			scr_OEFE_MoveList(true, inst_ES_ListManager);
		}
	} else {
		AmountToMove = CurrentUp - NextSelection;
		for (i = AmountToMove; i > 0; i--) {
			scr_OEFE_MoveList(false, inst_ES_ListManager);
		}
	}
	//else {
	//	AmountToMove = AmountToMove * -1;
		
	//	for (i = 0; i < AmountToMove; i++) {
	//		scr_OEFE_MoveList(false, inst_ES_ListManager);
	//	} 
	//}

}
