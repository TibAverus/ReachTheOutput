alarm[0] = MilSecondsBeforeSwitch;

if (sprite_index == spr_FireWall)
{
	audio_play_sound_on(SoundEmitter, snd_Firewall_Off, false, 1);
	sprite_index = spr_Empty;
}
else
{
	audio_play_sound_on(SoundEmitter, snd_Firewall_On, false, 1);
	sprite_index = spr_FireWall;
}