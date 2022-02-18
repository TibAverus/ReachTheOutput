switch (room)
{
	case rm_area0:
	{
		room_goto(rm_End);
		instance_destroy(id);
		break;
	}
}