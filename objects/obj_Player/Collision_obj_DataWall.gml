//if (!IsBeingDestroyed)
//{
//	IsBeingDestroyed = true;
//	Destroy();
//}

HorizontalSpeed = (HorizontalSpeed * -1) * 2;
//HorizontalSpeed = clamp(HorizontalSpeed, 0, MovementSpeed * 2);
VerticalSpeed = (VerticalSpeed * -1) * 2;
//VerticalSpeed = clamp(VerticalSpeed, 0, MovementSpeed * 2);
audio_play_sound(snd_BitCollision_1, 1, false);


HorizontalSpeed = clamp(HorizontalSpeed, -300, 300);
VerticalSpeed = clamp(VerticalSpeed, -300, 300);