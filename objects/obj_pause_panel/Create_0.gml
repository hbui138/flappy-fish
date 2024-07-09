/// @description Insert description here
// You can write your code in this editor

// obj_pause_panel Create Event
var x_center = x;
var y_center = y;

// Create child buttons and store their IDs
button_restart = instance_create_layer(x_center, y_center, "Buttons", obj_restart_button);
button_quit = instance_create_layer(x_center, y_center + 50, "Buttons", obj_quit_button);
button_resume = instance_create_layer(x_center, y_center + 120, "Buttons", obj_resume_button);

// Set the scale for the panel and buttons
image_xscale = 5;
image_yscale = 5;
button_restart.image_xscale = 3;
button_restart.image_yscale = 3;
button_quit.image_xscale = 3;
button_quit.image_yscale = 3;
button_resume.image_xscale = 3;
button_resume.image_yscale = 3;
