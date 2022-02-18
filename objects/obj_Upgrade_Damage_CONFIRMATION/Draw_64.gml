if (live_call()) return live_result;

var wid = display_get_gui_width();
var hei = display_get_gui_height();

var textWidth = 300;

var widthAdjust = 150;

draw_sprite(spr_Buff_Confirm_Back, 0, wid / 2, hei / 2);

draw_text_ext_transformed_color(wid / 2 - widthAdjust + 50, hei / 2 - 160, "YOU FOUND AN UPGRADE", 20, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);

draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 120, "You do twice the normal damage", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 90, "BUT", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2 - 65, "Your crosshair becomes a phyisical thing. If it touches any of the enemies or walls, you explode.", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_text_ext_transformed_color(wid / 2 - widthAdjust, hei / 2, "Do you accept? (y/n) (Make sure you move your crosshair to a safe place if you accept...)", 15, textWidth, 1, 1, 1, c_black, c_green, c_black, c_black, 1);
draw_sprite(spr_DefaultPrompt, animIndex, wid / 2 - 125, hei / 2 + 70);
