audio_listener_position(x, y, 0);
var _dt = delta_time / 1000000;

if (IsBeingDestroyed)
{
	image_alpha -= _dt * 0.75;
	
	if (image_alpha <= 0)
	{
		room_restart();
	}
}
else if (CanMove)
{
	if (!global.MovementSpeedBuff)
	{
		HorizontalSpeed = lerp(HorizontalSpeed, 0, 0.075);
		VerticalSpeed = lerp(VerticalSpeed, 0, 0.075);
	}
	else
	{
		HorizontalSpeed = lerp(HorizontalSpeed, 0, 0.4);
		VerticalSpeed = lerp(VerticalSpeed, 0, 0.4);
		MovementSpeed = 150;
	}
	
	if (gamepad_button_check(0, gp_shoulderrb))
	{
		if (CanMove)
		{
			Shoot();
		}
	}
	
	var MoveAdjustment = 0.35;

	if ((gamepad_axis_value(0, gp_axislh) > MoveAdjustment) || (gamepad_axis_value (0, gp_axislv) > MoveAdjustment) ||
		(gamepad_axis_value(0, gp_axislh) < -MoveAdjustment) || (gamepad_axis_value(0, gp_axislv) < -MoveAdjustment))
	{
		VerticalSpeed += MovementSpeed * gamepad_axis_value(0, gp_axislv);
		HorizontalSpeed += MovementSpeed * gamepad_axis_value(0, gp_axislh);
	}

	if (keyboard_check(ord("W")))
	{
		VerticalSpeed -= MovementSpeed;
		MoveWindow("W");
	}
	else if (keyboard_check(ord("S")))
	{
		VerticalSpeed += MovementSpeed;
		MoveWindow("S");
	}

	if (keyboard_check(ord("A")))
	{
		HorizontalSpeed -= MovementSpeed;
		MoveWindow("A");
	}
	else if (keyboard_check(ord("D")))
	{
		HorizontalSpeed += MovementSpeed;
		MoveWindow("D");
	}

	x += _dt * HorizontalSpeed;
	y += _dt * VerticalSpeed;
	
	show_debug_message("HORIZONTAL: " + string(gamepad_axis_value(0, gp_axisrh)));
	show_debug_message("VERTICAL: " + string(gamepad_axis_value(0, gp_axisrv)));
	
	var adjustment = 0.35;

	if ((gamepad_axis_value(0, gp_axisrh) > adjustment) || (gamepad_axis_value (0, gp_axisrv) > adjustment) ||
		(gamepad_axis_value(0, gp_axisrh) < -adjustment) || (gamepad_axis_value(0, gp_axisrv) < -adjustment))
	{
		image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
		//direction = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
	}

	//var pd = point_direction(x, y, gamepad_, mouse_y);
	//var dd = angle_difference(image_angle, pd);
	//image_angle -= min(abs(dd), (_dt * RotationSpeed)) * sign(dd);
}
//window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));