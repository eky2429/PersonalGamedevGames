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