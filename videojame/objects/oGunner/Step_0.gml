

target = oHome

var 
vx, vy,
ax, ay;

vx = x-old_x
vy = y-old_y

old_x = x
old_y = y

dir = point_direction(x,y,target.x,target.y)

fx += lengthdir_x(accel, dir)
fy += lengthdir_y(accel, dir)


if shoot_del <= 0 and point_distance(x,y,target.x,target.y) < 400
{
	shoot_del = shoot_del_max
	
	fx += lengthdir_x(4, dir+180)
	fy += lengthdir_y(4, dir+180)

	with instance_create_layer(x+lengthdir_x(16,dir),y+lengthdir_y(16,dir),"Instances",oEnemyBullet)
	{
		dmg = 1
		spd = 6
		dir = other.dir
	}
}


ax = fx/mass
ay = fy/mass

fx = 0
fy = 0

x_calc = vx + ax - vx/decel
y_calc = vy + ay - vy/decel          

				   
x += x_calc
y += y_calc

if hp <= 0
{
	instance_destroy();
}

shoot_del = approach(shoot_del,0,1)
