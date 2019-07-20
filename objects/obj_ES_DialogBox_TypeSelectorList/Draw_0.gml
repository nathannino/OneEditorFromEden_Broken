/// @description Draw the text
if (place_meeting(x,y,obj_ES_DialogBox_TypeSelectorBorder)) {
	draw_self();
	draw_set_font(fnt_OEFE_ES);
	draw_set_color(c_black);
	draw_text(x+4,y+ (sprite_height / 2),ID);
}