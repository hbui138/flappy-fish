/// @description Insert description here
// You can write your code in this editor

// Add the flag to check if the bird hit the pipe
show_debug_message(state)
switch(state) {
	case STATE.IDLE:
		image_angle = 0;
	break;
	
	case STATE.FLY:
		delta_angle = 15;
		image_speed = 1;
		if (image_angle <= 30) {
			image_angle += delta_angle;
		}
		
		speed = 5; // Set the initial speed
		direction = 90; // Set the initial direction

		if (gravity == 0) {
			gravity = 0.2;
		}
	break;
	
	case STATE.FALL:
        delta_angle = 1;
		if (image_angle >=-75) {
			image_angle -= delta_angle;
		}
	break;
	
	case STATE.DEAD_FALL:
		delta_angle = 10;
        gravity = 1;
		image_speed = 0;
		if (image_angle >=-75) {
			image_angle -= delta_angle;
		}
	break;
	
	case STATE.STOP:
		image_speed = 0;
		is_dead = true;
		speed = 0;
		gravity = 0;
	break;
}

score_handler()

if (place_meeting(x, y, obj_collision)) {
    // Collision with the ground
    state = STATE.STOP;
	sprite_index = fish_dead;
    // Call a function to show the menu panel
	global.just_hit_pipe = false;
    show_game_over_panel()
	
}

if (!is_dead) {
    if (place_meeting(x, y, [obj_pillar1, obj_pillar2])) {
        // Collision with the pipe
        state = STATE.DEAD_FALL;
        is_dead = true;
        global.just_hit_pipe = true; // Set the flag when hitting the pipe
		audio_play_sound(snd_hit, 0, false);
		audio_play_sound(snd_game_over, 0, false);
    }
	if (place_meeting(x, y, obj_collision)) {
		audio_play_sound(snd_hit, 0, false);
		audio_play_sound(snd_game_over, 0, false);
    }
}


