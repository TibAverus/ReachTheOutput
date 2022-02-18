longintrotext1 = "You've successfully delivered your message to the output.";
longintrotext2 = "Your final score was " + string(global.score) + "! You recovered " + string(global.DataRecovered) + "/10 data pieces.";
longintrotext3 = "Thank you so much for trying out my game, I hope you liked it!";
longintrotext4 = "Programming, coding, and almost everything else: Emilot Margus (aka Veronika Repo)";
longintrotext5 = "Music: Jasper (aka Sephra)";
longintrotext5andhalf = "All the sound effects in the game were generated by sfxr.me";
longintrotext6 = "Till next time!";
longintrotext7 = "Press any key to exit.";

var DisplayWidth = display_get_gui_width();

draw_text_ext_transformed_color(10, 10, longintrotext1, 20, DisplayWidth, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 80, longintrotext2, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 150, longintrotext3, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 220, longintrotext4, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 290, longintrotext5, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 360, longintrotext5andhalf, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(10, 430, longintrotext6, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);

draw_text_ext_transformed_color(DisplayWidth / 2 - 150, 700, longintrotext7, 30, DisplayWidth - 50, 1, 1, 0, c_white, c_grey, c_grey, c_green, 1);
