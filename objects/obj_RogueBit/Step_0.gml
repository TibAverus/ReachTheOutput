if (IsBeingDestroyed)
{
	effectCount++;
	if (effectCount >= 30)
	{
		DestroySparks("Instances");
		effectCount = 0;
	}
	image_index = image_index ? 0 : 1;
	alarm[0] = -1;
	
	image_alpha -= (delta_time / 1000000) * 0.5;
	
	if (image_alpha <= 0)
	{
		instance_destroy(id);
	}
}