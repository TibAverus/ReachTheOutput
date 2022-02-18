var _dt = delta_time / 1000000;

image_alpha -= _dt * 1;

if (image_alpha <= 0)
{
	instance_destroy(id);
}