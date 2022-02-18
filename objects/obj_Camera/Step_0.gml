instance_exists(ObjectToFollow)
{
	y = lerp(y, ObjectToFollow.y, 0.15);
	x = lerp(x, ObjectToFollow.x, 0.15);
}


layer_x("Background", camera_get_view_x(MainCamera) * 0.40);
layer_y("Background", camera_get_view_y(MainCamera) * 0.40);

layer_x("Background_Second", camera_get_view_x(MainCamera) * 0.9);
layer_y("Background_Second", camera_get_view_y(MainCamera) * 0.9);
