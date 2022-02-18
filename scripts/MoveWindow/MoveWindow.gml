function MoveWindow(dir)
{
	if (global.MovementSpeedBuff)
	{
		var Speed = 1;
		var MaxWidth = display_get_width() / 2;
		var MaxHeight = display_get_height() / 4;
		var MinXPos = 1;
		var MinYPos = 30;

		var currentX = window_get_x();
		var currentY = window_get_y();
	
		var ModifiedX = currentX;
		var ModifiedY = currentY;
	
		switch (dir)
		{
			case "W":
			{
				ModifiedY -= Speed;
				break;
			}
			case "S":
			{
				ModifiedY += Speed;
				break;
			}
			case "A":
			{
				ModifiedX -= Speed;
				break;
			}
			case "D":
			{
				ModifiedX += Speed;
				break;
			}
		}
		
		window_set_position(clamp(ModifiedX, MinXPos, MaxWidth), clamp(ModifiedY, MinYPos, MaxHeight));
	}
}