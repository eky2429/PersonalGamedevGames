draw_self();

if flash > 0
{
	shader_set(shFlash)	
	draw_self();
	shader_reset()
}

flash = approach(flash,0,1)