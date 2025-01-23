var centerX = global.ideal_width / 2
var centerY = global.ideal_height / 2

var fuel_bar_height = 120
var fuel_bar_XOffset = max(300, centerX - 20)
var fuel_bar_width = 20

var fuel_factor = oPlayer.fuel / oPlayer.feul_max

draw_rectangle(centerX + fuel_bar_XOffset,
	centerY - fuel_bar_height,
	centerX + fuel_bar_XOffset + fuel_bar_width,
	centerY + fuel_bar_height, true)
	
draw_rectangle(centerX + fuel_bar_XOffset,
	centerY - fuel_bar_height,
	centerX + fuel_bar_XOffset + fuel_bar_width,
	centerY + fuel_bar_height * fuel_factor, false)