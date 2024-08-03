/// @description Insert description here
// You can write your code in this editor

state = STATE.IDLE;

is_dead = false;
delta_angle = 0;
current_sound = -1;

global.game_start = false;
global.game_over = false;
global.just_hit_pipe = false;
global.click_paused = false;