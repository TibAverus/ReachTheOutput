other.HitAnEnemy = true;
if (Hitpoints <= 0)
{
	if (!IsBeingDestroyed)
	{
		IsBeingDestroyed = true;

		DestroySparks("Instances", snd_Shoot_Powerful);
	}
}
else
{
	if (global.BulletDamageBuff)
	{
		Hitpoints -= 10;
	}
	Hitpoints -= 10;
	ShootSpeed -= 5;
	ShootSpeed = clamp(ShootSpeed, 25, 120);
	instance_destroy(other);
	DestroySparks("Instances");
	audio_play_sound_on(SoundEmitter, snd_BitCollision_1, false, 1);
}