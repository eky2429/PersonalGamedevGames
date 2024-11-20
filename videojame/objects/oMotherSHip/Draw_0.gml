
vis_dir = lerp(vis_dir,dir,0.2)

draw_sprite_ext(sprite_index,image_index,x,y,2,2,vis_dir,c_white,image_alpha)

if flash > 0
{
	shader_set(shFlash)	
	draw_sprite_ext(sprite_index,image_index,x,y,2,2,vis_dir,c_white,image_alpha)
	shader_reset()
}

flash = approach(flash,0,1)