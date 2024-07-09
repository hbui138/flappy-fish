/// @description Insert description here
// You can write your code in this editor
global.game_paused = !global.game_paused;

if (global.game_paused) {
        show_pause_panel()
} else {
    with (obj_pause_panel) {
        instance_destroy();
    }
	global.game_paused = false
}