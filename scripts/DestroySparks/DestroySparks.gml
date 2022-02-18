function DestroySparks(_layerToUse, _soundToPlay = undefined)
{
	repeat(irandom_range(6, 19))
	{
		instance_create_layer(x + irandom_range(0, 19), y + irandom_range(0, 19), _layerToUse, obj_Spark);
	}
	if (!is_undefined(_soundToPlay))
	{
		audio_play_sound(_soundToPlay, 1, false);
	}
}