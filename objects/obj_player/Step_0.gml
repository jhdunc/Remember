
// Bob up and down
y += shift;

// Check keys for movement
if (global.playerControl == true) {
	moveRight = keyboard_check(vk_right)||keyboard_check(ord("D"));
	moveUp = keyboard_check(vk_up)||keyboard_check(ord("W"));
	moveLeft = keyboard_check(vk_left)||keyboard_check(ord("A"));
	moveDown = keyboard_check(vk_down)||keyboard_check(ord("S"));
	
	}
if (global.playerControl == false) {
	moveRight = 0;
	moveUp = 0;
	moveLeft = 0;
	moveDown = 0;
	
	}


// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);


// If Idle
if (vx == 0 && vy == 0) {
	myState = playerState.idle;
	startDust = 0;

}

// If moving
if (vx != 0 || vy != 0) {
	if !collision_point(x+vx,y,obj_par_environment,true,true) {
		x += vx;
	}
	if !collision_point(x,y+vy,obj_par_environment,true,true) {
		y += vy;
}
// Change direction based on movement
if (vx > 0) {
	dir = 0;
}
if (vx < 0) {
	dir = 2;
}
if (vy > 0) {
	dir = 3;
}
if (vy < 0) {
	dir = 1;
}
// Set state
myState = playerState.walking;

// Start creating dust
if (startDust == 0) {
	alarm[0] = 2;
	startDust = 1;
}

// Move audio listener with me
audio_listener_set_position(0,x,y,0);
}

// Auto-choose Sprite based on state and direction
sprite_index = playerSpr[myState][dir];

// Depth Sorting
depth =-y;

// Check for collision with NPCs
nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);
	if nearbyNPC {
// Play greeting sound
	if (hasGreeted == false) {
	if !(audio_is_playing(snd_greeting01)) {
		audio_play_sound(snd_greeting01,1,0);
		hasGreeted = true;
		}
	}
// Pop up prompt
	if (npcPrompt == noone || npcPrompt == undefined) {
		npcPrompt = scr_showPrompt(nearbyNPC,nearbyNPC.x,nearbyNPC.y-125);
	}
	show_debug_message("obj_player has found an NPC!");
}
	if !nearbyNPC {
		// Reset greeting
		if (hasGreeted == true) {
			hasGreeted = false;
		}
		// Get rid of prompt
		scr_dismissPrompt(npcPrompt,0);
	show_debug_message("obj_player hasn't found anything");
}

		if !nearbyNPC {
	// Reset greeting
		if (hasGreeted == true) {
			hasGreeted = false;
			}
		show_debug_message("obj_player hasn't found anything");
	}


	