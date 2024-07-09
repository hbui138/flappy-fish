/// @description Insert description here
// You can write your code in this editor

// obj_pause_panel Destroy Event
if (instance_exists(button_restart)) {
    with (button_restart) { instance_destroy(); }
}
if (instance_exists(button_quit)) {
    with (button_quit) { instance_destroy(); }
}

