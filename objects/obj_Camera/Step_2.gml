HalfViewWidth = camera_get_view_width(MainCamera) / 2;
HalfViewHeight = camera_get_view_height(MainCamera) / 2;

cx = x - HalfViewWidth;
cy = y - HalfViewHeight;

cx = clamp(cx, MinViewX, MaxViewX);
cy = clamp(cy, MinViewY, MaxViewY);

camera_set_view_pos(MainCamera, cx, cy);