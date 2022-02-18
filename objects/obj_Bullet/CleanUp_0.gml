if (global.BulletSpeedBuff)
{
	if (HitAnEnemy)
	{
		game_set_speed(game_get_speed(gamespeed_fps) - 5, gamespeed_fps);
	}
	else
	{
		game_set_speed(game_get_speed(gamespeed_fps) + 5, gamespeed_fps);
	}
	game_set_speed(clamp(game_get_speed(gamespeed_fps), 60, 240), gamespeed_fps);
}