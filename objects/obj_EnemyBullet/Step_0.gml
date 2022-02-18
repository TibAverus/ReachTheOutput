if (distance_to_object(obj_Player) < 50 && !PlayedFlyby)
{
	PlayedFlyby = true;
	audio_play_sound_on(SoundEmitter, snd_Projectile_Flyby, false, 1);
}