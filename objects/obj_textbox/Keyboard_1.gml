if(selected)
{
    if(keyboard_lastkey == keyDownPrevious)
    {
        keyDownTime += 1;
    }
    else
    {
        keyDownTime = 0;
    }
    if(keyboard_check(vk_backspace) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        else
        {
            text = string_delete(text, cursor, 1);
            cursor -= 1;
        }   
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_delete) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        else
            text = string_delete(text, cursor + 1, 1);
            
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_left) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
            
        if(keyboard_check(vk_control))
        {
            var temp = cursor;
            cursor = string_get_highest_index(text, " ", cursor);
            if(cursor > temp)
                cursor = 0;
        }
        cursor -= cursor > 0;
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_right) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        if(keyboard_check(vk_control))
        {
            var temp = cursor;
            cursor = string_get_lowest_index(text, " ", cursor + 1) - 1;
            if(cursor < temp)
                cursor = string_length(text);
        }
        cursor += cursor < string_length(text);
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("C")) && selectedStart != -1)
    {
        clipboard_set_text(textbox_text_selected_get(id));
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("X")) && selectedStart != -1)
    {
        clipboard_set_text(textbox_text_selected_get(id));
        textbox_text_selected_remove(id);
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text() && keyDownTime == 0)
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        textbox_text_insert(id, clipboard_get_text());
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("A")) && string_length(text) > 0)
    {
        cursor = string_length(text);
        selectedStart = 0;
    }
    else if(keyboard_check(vk_end))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        cursor = string_length(text);
    }
    else if(keyboard_check(vk_home))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        cursor = 0;
    }
    
    else if(keyboard_string != "")
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        if(keyboard_string == "#")
            textbox_text_insert(id, "\\#");
        else
            textbox_text_insert(id, keyboard_string);
        keyboard_string = "";
    }
    if(keyboard_lastkey != vk_lshift && keyboard_lastkey != vk_rshift && keyboard_lastkey != vk_lcontrol && keyboard_lastkey != vk_rcontrol)
        keyDownPrevious = keyboard_lastkey;
}

