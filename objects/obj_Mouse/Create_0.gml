window_set_cursor(cr_none);

window_mouse_set(display_get_gui_width() / 2, display_get_gui_height() / 2);

function Destroy(_layerToUse = "Instances")
{
	DestroySparks(_layerToUse, snd_Shoot_Powerful);
	if (instance_exists(obj_Player))
	{
		obj_Player.Destroy();
	}
	instance_destroy(id);
}