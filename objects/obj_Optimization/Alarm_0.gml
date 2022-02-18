if (global.MovementSpeedBuff)
{
	alarm[0] = 2;
}
else
{
	alarm[0] = 6;
}

instance_deactivate_layer("Enemies");
instance_deactivate_layer("DataWalls");
var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
//instance_deactivate_region(_vx - DistanceAdjust, _vy - DistanceAdjust, _vw + DistanceAdjust, _vh + DistanceAdjust, false, true);
instance_activate_region(_vx - DistanceAdjust, _vy - DistanceAdjust, _vw + DistanceAdjust, _vh + DistanceAdjust, true);
