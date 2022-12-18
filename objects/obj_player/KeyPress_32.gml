var _text;

// Create a textbox if NPC is nearby
if (nearbyNPC && global.playerControl == true) {
	_text = nearbyNPC.myText;
	if (!instance_exists(obj_textbox)) {
		iii = instance_create_depth(nearbyNPC.x,nearbyNPC.y-300,-10000,obj_textbox);
		iii.textToShow = _text;
		}
	}

var _npcname;
var _questdx;

// Create a quest Dialogue
if (nearbyNPC && global.playerControl == false && nearbyNPC.npcQuest == true) {
	if (nearbyNPC.npcstate = npcStates.ready && instance_exists(obj_textbox)){
	_questdx = nearbyNPC.questBegin;
	_npcname = nearbyNPC.npcname;
	
		iv = instance_create_depth(x,nearbyNPC.y-150,-10000,obj_ui_questdx);
		iv.textToShow = _questdx;
	
	}
}