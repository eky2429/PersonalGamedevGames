if instance_exists(oPlayer) follow = (oPlayer);

xTo = (follow.x);
yTo = (follow.y);

//7 is a magic number for how fast to snap to follow
x += (xTo - x)/2;
y += (yTo - y)/2;

shakeA = max(0, shakeA - ((1/shakeL)*shakeM));
x += random_range(-shakeA,shakeA)
y += random_range(-shakeA, shakeA)

x = clamp(x,viewwidthhalf,room_width - viewwidthhalf);
y = clamp(y,viewheighthalf,room_height - viewheighthalf);


camera_set_view_pos(cam,x-viewwidthhalf,y-viewheighthalf);