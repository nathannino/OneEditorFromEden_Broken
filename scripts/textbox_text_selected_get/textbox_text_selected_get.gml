/// @description textbox_text_selected_get(textbox)
/// @param textbox
with(argument0)
{
    if(selectedStart == -1)
        return "";
    if(selectedStart > cursor)
    {
        return string_copy(text, cursor + 1, selectedStart - cursor);
    }
    else
    {
        return string_copy(text, selectedStart + 1, cursor - selectedStart);
    }
}
