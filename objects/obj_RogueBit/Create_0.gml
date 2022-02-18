event_inherited();

effectCount = 0;

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

image_speed = 0;