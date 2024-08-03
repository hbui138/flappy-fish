/// @description Insert description here
// You can write your code in this editor
if(!global.click_paused){
	state = STATE.FLY;
	if (audio_is_playing(current_sound)) {
		audio_stop_sound(current_sound);
	}
	current_sound = audio_play_sound(snd_water_splash, 1, false);
} else {
	global.click_paused = false;
}