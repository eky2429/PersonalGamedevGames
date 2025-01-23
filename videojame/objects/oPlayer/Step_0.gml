//Exit when health is less than 0
if hp <= 0	exit;

key_up = keyboard_check(ord("W")) // keyboard_check(vk_up);
key_left = keyboard_check(ord("A")) //or keyboard_check(vk_left);
key_down = keyboard_check(ord("S")) //or keyboard_check(vk_down);
key_right = keyboard_check(ord("D")) //or keyboard_check(vk_right);

key_shoot = mouse_check_button(mb_left)

inputdir = point_direction(0,0,key_right-key_left,key_down-key_up);
inputmag = (key_right-key_left != 0) or (key_down-key_up != 0);


if inputmag != 0
{
	fuel = approach(fuel, 0,.1)
}

aim_dir =  point_direction(x,y,mouse_x,mouse_y)

var 
vx, vy,
ax, ay;

vx = x-old_x
vy = y-old_y

old_x = x
old_y = y


if fuel > 0
{
	fx += lengthdir_x(inputmag * accel, inputdir)
	fy += lengthdir_y(inputmag * accel, inputdir)
}

ax = fx/mass
ay = fy/mass

fx = 0
fy = 0

x_calc = vx + ax - vx/decel
y_calc = vy + ay - vy/decel          
				

if key_shoot and shoot_del <= 0
{
	shoot_del = shoot_del_max
	
	//fx += lengthdir_x(2, aim_dir * 100)
	
	with instance_create_layer(x+lengthdir_x(16,aim_dir),y+lengthdir_y(16,aim_dir),"Instances",oBullet)
	{
		dmg = 1
		spd = 15
		dir = other.aim_dir+random_range(-other.accuracy,other.accuracy)
	}
}
		
shoot_del = approach(shoot_del,0,1)
				   
x += x_calc
y += y_calc