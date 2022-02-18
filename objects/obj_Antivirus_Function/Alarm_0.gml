/// @description Shoot
alarm[0] = ShootSpeed;
if (instance_exists(obj_Player))
{
	if (!obj_Player.IsBeingDestroyed)
	{
		EnemyShoot();
	}
}