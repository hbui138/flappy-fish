/// @description Insert description here
// You can write your code in this editor

if (global.game_paused) {
	instance_deactivate_object(obj_to_be_deactivate)
	if(global.click_continue){
		global.click_continue = false;
		alarm[0] = 180;
		saved_score = global.score;
	}
} else {
	instance_activate_object(obj_to_be_deactivate)
}

if(alarm[0] % 60 == 0){
	global.score = alarm[0]/60;
    if(alarm[0]==0){
		global.score = saved_score;
	}
}