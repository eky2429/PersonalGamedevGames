draw_self();

if flash > 0
{
	shader_set(shFlash)	
	draw_self();
	shader_reset()
}

flash = approach(flash,0,1)

//if sheild.active = true
//{
//	sheild_raidus = lerp(sheild_raidus,sheild_raidus_max,0.2)
//}
//if sheild.active = false
//{
//	sheild_raidus = lerp(sheild_raidus,0,0.2)
//}
//
//draw_circle(x,y,sheild_raidus,!(sheild.flash>0))