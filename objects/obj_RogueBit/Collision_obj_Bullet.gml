other.HitAnEnemy = true;

if (Hitpoints <= 0)
{
	if (!IsBeingDestroyed)
	{
		IsBeingDestroyed = true;
		global.difficulty += 0.5;
		DestroySparks("Instances", snd_Shoot_Powerful);
	}
}
else
{
	if (!IsAttackingPlayerDirectly)
	{
		IsAttackingPlayerDirectly = true;
	}
	Hitpoints -= 10;
	instance_destroy(other);
	DestroySparks("Instances");
	audio_play_sound_on(SoundEmitter, snd_BitCollision_1, false, 1);
}