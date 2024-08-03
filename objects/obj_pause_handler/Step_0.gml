/// @description Insert description here
// You can write your code in this editor

if (global.game_paused) {
	instance_deactivate_object(obj_to_be_deactivate)
	if(global.click_continue){
		global.click_continue = false;
		alarm[0] = 180;
	}
} else {
	instance_activate_object(obj_to_be_deactivate)
}


