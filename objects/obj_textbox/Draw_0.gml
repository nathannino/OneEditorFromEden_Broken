surface_set_target(surf);
draw_self();
var tempAlpha = draw_get_alpha();
var tempColor = draw_get_colour();
draw_set_valign(fa_middle);


draw_text_colour(x + 2 - offset, y + sprite_height / 2, string_hash_to_newline(text), textColor, textColor, textColor, textColor, textAlpha);
if(showCursor)
{
    draw_line(cursorPosition, y + 2, cursorPosition, y + sprite_height - 3);
}
if(selectedStart != -1)
{
    var x1, x2;
    if(selectedStart > cursor)
    {
        x1 = x + string_width(string_hash_to_newline(string_copy(text, 1, cursor))) + 2;
        x2 = x1 + string_width(string_hash_to_newline(string_copy(text, cursor + 1, selectedStart - cursor)));
    }
    else
    {
        x1 = x + string_width(string_hash_to_newline(string_copy(text, 1, selectedStart))) + 2;
        x2 = x1 + string_width(string_hash_to_newline(string_copy(text, selectedStart + 1, cursor - selectedStart)));
    }
    if(selected)
    {
        draw_set_alpha(selectionAlpha);
        draw_set_color(selectionColor);
    }
    else
    {
        draw_set_alpha(selectionUnfocusAlpha);
        draw_set_color(selectionUnfocusColor);
    }
    if(x1 - offset < x + 1)
        x1 = x + offset;
    draw_rectangle(x1 - offset, y + 2, x2 - offset, y + sprite_height - 3, false);
    draw_set_alpha(tempAlpha);
    draw_set_color(tempColor);
}
surface_reset_target();
if(surface_exists(surf))
{
    draw_surface_part(surf, x, y, sprite_width, sprite_height, x, y);
}


