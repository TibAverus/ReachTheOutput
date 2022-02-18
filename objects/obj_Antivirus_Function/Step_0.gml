if (!IsBeingDestroyed)
{
	var _pl = obj_Player;

	if (distance_to_object(_pl) > 120 && ShouldGoToPlayer)
	{
		mp_linear_step_object(_pl.x, _pl.y, 5 + (global.difficulty / 4), all)
	}
	else
	{
		ShouldGoToPlayer = false;
	}

	if (distance_to_object(_pl) > 140 && !ShouldGoToPlayer)
	{
		ShouldGoToPlayer = true;
	}

	image_angle = point_direction(x, y, _pl.x, _pl.y);
}
else
{
	image_alpha -= (delta_time / 1000000) * 0.6;
	if (image_alpha <= 0)
	{
		instance_destroy(id);
	}
}