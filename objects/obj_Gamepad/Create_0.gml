show_debug_message(string(gamepad_is_supported()));

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
	if (gamepad_is_connected(i))
	{
		show_debug_message("GAMEPAD CONNECTED: " + string(i));
		global.gp[i] = true;
	}
	else
	{
		global.gp[i] = false;
	}
}

