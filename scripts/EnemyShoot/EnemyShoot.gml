function EnemyShoot(_layerToUse = "Instances")
{
	if (!IsBeingDestroyed)
	{
		var xMod = cos(degtorad(image_angle)) * sprite_height / 2;
		var yMod = -sin(degtorad(image_angle)) * sprite_height / 2;

		var inst= instance_create_layer(x + xMod, y + yMod, _layerToUse, obj_EnemyBullet);
		inst.direction = image_angle;
		audio_play_sound_on(SoundEmitter, snd_Shoot_Default, false, 1);
	}
}