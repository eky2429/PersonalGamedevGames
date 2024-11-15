var hit_dir = point_direction(other.x,other.y,x,y)

if x = other.x
	x+= irandom_range(-1,1)
if y = other.y
	y+= irandom_range(-1,1)
	
fx += lengthdir_x(.1, hit_dir)
fy += lengthdir_y(.1, hit_dir)

