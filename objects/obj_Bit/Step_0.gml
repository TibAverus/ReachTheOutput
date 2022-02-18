var _dt = delta_time / 1000000;

image_alpha -= _dt * 1;

if (image_alpha <= 0)
{
	instance_destroy(id);
}

if (distance_to_object(obj_Player) < 50 && !PlayedFlyby)
{
	PlayedFlyby = true;
	audio_play_sound_on(SoundEmitter, snd_Projectile_Flyby, false, 1);
}