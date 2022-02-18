image_index = image_index ? 0 : 1;
var projectile = instance_create_layer(x, y, "Instances", obj_Bit);
projectile.direction = irandom_range(0, 359);

if (IsAttackingPlayerDirectly)
{
	projectile.direction = point_direction(projectile.x, projectile.y, obj_Player.x, obj_Player.y);
}
	
var soundToPlay = choose(snd_RogueBitCreate_1, snd_RogueBitCreate_2,
	snd_RogueBitCreate_3, snd_RogueBitCreate_4, snd_RogueBitCreate_5);

audio_play_sound_on(SoundEmitter, soundToPlay, false, 1);

var DelayMin = ShootDelayMin - (global.difficulty * 10);
var DelayMax = ShootDelayMax - (global.difficulty * 10);
if (DelayMin <= 0)
{
	DelayMin = 1;
}

if (DelayMax <= 0)
{
	DelayMax = 2;
}
alarm[0] = irandom_range(room_speed * DelayMin, room_speed * DelayMax);