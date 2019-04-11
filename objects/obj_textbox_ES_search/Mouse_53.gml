if(mouse_x >= x && mouse_y >= y && mouse_x < x + sprite_width && mouse_y < y + sprite_height)
{
    selected = true;
    showCursor = true;
    alarm[0] = cursorBlinkTime;
    keyboard_string = "";
    selectedStart = -1;
    cursor = textbox_get_cursor_at(id, mouse_x);
    dragSelecting = true;
}
else
{
    selected = false;
    showCursor = false;
    alarm[0] = -1;
    dragSelecting = false;
}

