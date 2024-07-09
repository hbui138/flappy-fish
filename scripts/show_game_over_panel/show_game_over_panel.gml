// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_game_over_panel(){
	global.game_over = true;
    var _game_over_panel = instance_create_layer(200, 400, "GUI", obj_game_over_panel);
}

