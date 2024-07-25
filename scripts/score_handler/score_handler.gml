// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.score = 0;
global.high_score = 0;

function score_handler(){
	//Update high score
	if (global.score > global.high_score) {
		global.high_score = global.score
	}
	
	// Get the current x position of the bird
	var bird_x = x;

	// Loop through all pipe objects
	with (obj_pillar1) {
	    if (x == bird_x && !scored) { 
	        global.score += 1; // Increase score by 1
	        scored = true; 
	    }
	}
}