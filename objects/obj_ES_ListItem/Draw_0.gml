/// @description Insert description here
draw_self(); //since we are manually replacing the default draw, we need to add this

draw_set_font(fnt_OEFE_ES);
draw_set_color(c_black);
draw_text(x + 5,y + 6,SetId);
//draw_text(x + 5,y,SetId);