window_set_caption("Reach the Output - A Jam by Emilot Margus");

audio_play_sound(mus_Intro, 1, true);

defaultFont = draw_get_font();

draw_set_font(fn_Main);

currentSpriteFrame = 0;

alarm[1] = 40;
alarm[0] = 60;

canProceed = false;