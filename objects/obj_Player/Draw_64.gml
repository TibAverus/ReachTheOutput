draw_text(10, 10, "Score: " + string(global.score));
if (global.HealthBuff)
{
	draw_text(10, 30, "Lives: " + string(CurrentLives));
}

if (global.BulletSpeedBuff)
{
	draw_text(10, 50, "Game speed: " + string(game_get_speed(gamespeed_fps)));
}