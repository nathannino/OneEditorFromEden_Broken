/// @description Insert description here
if (obj_ES_ListManager.CurrentSelected == self) {
	image_index = 1;
} else {
	image_index = 0;
}

draw_self(); //since we are manually replacing the default draw, we need to add this

draw_set_font(fnt_OEFE_ES);
draw_set_color(c_black);
draw_text(x + 5,y + (sprite_height / 2),SetId);
//draw_text(x + 5,y,SetId);