function approach(value, goal, spd)
{
	/// Approach(a, b, amount)
	// Moves "a" towards "b" by "amount" and returns the result
	/// @param value
	/// @param goal
	/// @param spd
	
	if (value < goal)
	{
	    value += spd;
	    if (value > goal)
	        return goal;
	}
	else
	{
	    value -= spd                 ;
	    if (value < goal)
	        return goal;
	}
	return value;
}

function angle_lerp(argument0, argument1, argument2) {
    var angle = (argument0 - angle_difference(argument0, argument1) * argument2)
    
    if(angle < 0) angle+=360;
    if(angle >= 360) angle -= 360;

    return angle;
}