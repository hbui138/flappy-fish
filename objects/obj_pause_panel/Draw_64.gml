/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_color(c_black)
draw_set_font(fnt_flappy_font)

draw_set_halign(fa_center)
draw_set_valign(fa_top)

var text = "Best\n" + string(global.high_score);

draw_text(x, y - 110, text)