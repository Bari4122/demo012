//the alarm goes off and the following code is triggered:

//flip the bar on active text
if adder == 0 {
	adder = 1;
	bar = "|";
} else {
	adder = 0;
	bar = "";
}

//reset the alarm to go off in 0.50 second
alarm[0] = room_speed / 2;