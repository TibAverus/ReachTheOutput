MainCamera = view_camera[0];

MinViewX = 0;
MinViewY = 0;
MaxViewX = room_width - camera_get_view_width(MainCamera);
MaxViewY = room_height - camera_get_view_height(MainCamera);