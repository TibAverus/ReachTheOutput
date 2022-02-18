audio_play_sound(snd_Pickup_1, 1, false);
global.score += 10;
global.DataRecovered += 1;
instance_destroy(id);