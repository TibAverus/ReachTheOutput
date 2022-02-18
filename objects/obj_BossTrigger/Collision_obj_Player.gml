instance_activate_layer("Bosses");
instance_activate_layer("BossBlock");

var elements = layer_get_all_elements("BossBlock");
var length = array_length(elements);

for (var i = 0; i < length; i++)
{
	var instance = layer_instance_get_instance(elements[i]);
	instance.image_alpha = 1;
	instance.mask_index = spr_DataWall;	
}

var BossOne = instance_create_layer(obj_BossSpawnPoint1.x, obj_BossSpawnPoint1.y, "Bosses", obj_Antivirus_Function);
var BossTwo = instance_create_layer(obj_BossSpawnPoint2.x, obj_BossSpawnPoint2.y, "Bosses", obj_Antivirus_Function);

BossOne.ShootSpeed = 120;
BossOne.Hitpoints = 200;
BossOne.IAmBoss = true;

BossTwo.ShootSpeed = 120;
BossTwo.Hitpoints = 200;
BossTwo.IAmBoss = true;
audio_play_sound(snd_Shoot_Powerful, 1, false);
instance_destroy(id);