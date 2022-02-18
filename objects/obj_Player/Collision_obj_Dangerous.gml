if (!global.HealthBuff)
{
	if (!IsBeingDestroyed)
	{
		IsBeingDestroyed = true;
		Destroy();
	}
}
else
{
	var CurWidth = window_get_width();
	var CurHeight = window_get_height();
	//window_set_size(CurWidth / 2, CurHeight / 2);
	instance_destroy(other);
	CurrentLives--;
	audio_play_sound(snd_Shake_1, 1, false);
	if (CurrentLives <= 0 && !IsBeingDestroyed)
	{
		//window_set_size(1366, 768);
		IsBeingDestroyed = true;
		Destroy();
	}
}