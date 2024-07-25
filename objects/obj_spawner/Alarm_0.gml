/// @description Insert description here
// You can write your code in this editor

if (global.game_start = true) {
	var center = random_range(300, 500)
	var gap = 50;

	instance_create_layer(500, center + gap, "Instances", obj_pillar1);
	instance_create_layer(500, center - gap, "Instances", obj_pillar2);
	
	alarm_set(0, 180);
}
else {
	alarm_set(0, 10)
}
