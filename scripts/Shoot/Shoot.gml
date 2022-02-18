function Shoot(_layerToUse = "Bullets")
{
	if (CanCurrentlyShot && !IsBeingDestroyed)
	{
		CanCurrentlyShot = false;
		alarm[0] = room_speed * ShootSpeed;
		var xMod = cos(degtorad(image_angle)) * sprite_height / 2;
		var yMod = -sin(degtorad(image_angle)) * sprite_height / 2;

		var inst= instance_create_layer(x + xMod, y + yMod, _layerToUse, obj_Bullet);
		inst.direction = image_angle;
		audio_play_sound(snd_Shoot_Default, 1, false);
	}
}