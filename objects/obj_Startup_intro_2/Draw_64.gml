longintrotext1 = "And last... your upgrades.";
longintrotext2 = "You'll find objects like these scattered around the place. There's 4 in total, and each one will provide you with ONE unique buff, while also giving you a heavy side effect.";
longintrotext3 = "You will always have the opportunity to accept or decline these, but it's worth trying them out!";
longintrotext4 = "These are the small data packages you can collect for some extra points.\nThis game works properly ONLY in windowed mode! Please don't try to change the resolution or go fullscreen. Trust me.";
longintrotext5 = "And with that, you're ready to go! Have fun, I hope you'll enjoy this small thing I put together!";
longintrotext6 = "Press SPACE to continue!";

var DisplayWidth = display_get_gui_width();

draw_text_ext_transformed_color(10, 10, longintrotext1, 20, DisplayWidth, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 90, longintrotext2, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 150, longintrotext3, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_sprite(spr_RecoveredInfo, 0, 40, 260);

draw_text_ext_transformed_color(10, 300, longintrotext4, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 400, longintrotext5, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(DisplayWidth / 2 - 150, DisplayWidth / 2, longintrotext6, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);
