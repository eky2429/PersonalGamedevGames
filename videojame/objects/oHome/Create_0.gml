x = room_width/2 ;
y = room_height/2;

hp = 10;

i_frames = 0;

flash = 0;

weapon_list = ds_list_create()

ds_list_add(weapon_list,instance_create_depth(x,y,layer_get_depth("Instances")-50,oHomeSniper));