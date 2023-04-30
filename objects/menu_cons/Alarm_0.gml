//the alarm goes off and the following code is triggered:

//flip the bar on active text
if adder == 0 {
	adder = 1;
	bar = "|";
} else {
	adder = 0;
	bar = "";
}

add_recipe = 0;
click_block_2 = 0;
removed = 0;
fail = 0;

//reset the alarm to go off in 0.50 second
alarm[0] = room_speed / 2;