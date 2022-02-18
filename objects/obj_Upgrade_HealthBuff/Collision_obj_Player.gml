if (!instance_exists(obj_Upgrade_HealthBuff_CONFIRMATION))
{
	instance_create_depth(x, y, 0, obj_Upgrade_HealthBuff_CONFIRMATION);
	instance_destroy(id);
}