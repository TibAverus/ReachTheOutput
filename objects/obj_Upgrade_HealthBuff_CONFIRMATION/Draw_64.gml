if (live_call()) return live_result;

var wid = display_get_gui_width();
var hei = display_get_gui_height();

var textWidth = 300;

var widthAdjust = 150;

draw_sprite(spr_Buff_Confirm_Back, 0, wid / 2, hei / 2);

draw_text_ext_transformed_color(wid / 2 - widthAdjust + 50, hei / 2 - 160, "YOU FOUND AN UPGRADE", 20, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);

draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 120, "You can take 3 hits before dying...", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 70, "BUT", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 40, "Every time you get hit by a bullet (only a bullet), the game window will shrink.", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 + 20, "Do you accept? (y/n)", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_sprite(spr_DefaultPrompt, animIndex, wid / 2 - 125, hei / 2 + 60);
