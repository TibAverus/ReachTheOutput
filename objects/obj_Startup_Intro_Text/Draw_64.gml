longintrotext1 = "Welcome!\n\nIn this game, you play as a small data recovery tool inside an unknown system.";
longintrotext2 = "Your job is to get the information to the output while optionally, recovering more data for the user on the way.";
longintrotext3 = "You can move with the WASD, and aim with the mouse. You may shoot with SPACE or the LEFT MOUSE BUTTON.";
longintrotext4 = "These fellas are called Rogue bits. They are unstable bits that may randomly change their value, and in doing so, release a small projectile that can destroy you. These shoot at random, but if the player attack them, they will aim for the player next time. Be careful, and only shoot them if absolutely necessary!";
longintrotext5 = "These are firewalls, they go on and off at set intervals, time your moves right to pass them!";
longintrotext6 = "And last, these are antivirus functions, they are programmed to hunt down any software that's still running on this locked down system.";
longintrotext7 = "Press SPACE to continue!";

var DisplayWidth = display_get_gui_width();

draw_text_ext_transformed_color(10, 10, longintrotext1, 20, DisplayWidth, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 80, longintrotext2, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_sprite(spr_Player_PLACEHOLDER, 0, 70, 160);

draw_text_ext_transformed_color(10, 190, longintrotext3, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_sprite(spr_RogueBit, currentSpriteFrame, 70, 275);

draw_text_ext_transformed_color(10, 300, longintrotext4, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_sprite(spr_FireWall, 0, 70, 460);

draw_text_ext_transformed_color(10, 500, longintrotext5, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_sprite(spr_Antivirus, 0, 70, 600);

draw_text_ext_transformed_color(10, 640, longintrotext6, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(DisplayWidth / 2 - 200, 720, longintrotext7, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);
