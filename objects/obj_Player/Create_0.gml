randomize();
instance_create_layer(x, y, "Instances", obj_Gamepad);
//window_set_size(1366, 768);
game_set_speed(60, gamespeed_fps);

alarm[1] = 30;

global.difficulty = 0.1;
global.score = 0;
global.DataRecovered = 0;

global.BossesDefeated = 0;

global.BulletDamageBuff = 0;
global.BulletSpeedBuff = 0;
global.MovementSpeedBuff = 0;
global.HealthBuff = 0;


switch (room)
{
	case rm_area0:
	{
		if (!audio_is_playing(mus_Stage0))
		{
			audio_play_sound(mus_Stage0, 1, true);
		}
		break;
	}
}

audio_listener_orientation(0, 1, 0, 0, 0, 1);

if (!instance_exists(obj_Mouse))
{
	room_restart();
}

function Destroy(_layerToUse = "Instances")
{
	HorizontalSpeed = 0;
	VerticalSpeed = 0;
	
	IsBeingDestroyed = true;
	
	DestroySparks(_layerToUse, snd_Destroyed);
}



