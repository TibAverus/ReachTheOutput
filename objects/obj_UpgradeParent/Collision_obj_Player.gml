if (!instance_exists(Confirmation))
{
	instance_create_depth(x, y, 0, Confirmation);
	instance_destroy(id);
}