//initiate circle (circle is draw in "draw" event)
radius = 0;
click_x = mouse_x;
click_y = mouse_y;


//reset bar when clicking
alarm[0] = room_speed / 2;
adder = 1;
bar = "|";


//main menu
if menu == 0 {
	//when clicking in button 1
	//checking if the mouse is inside the box
	if mouse_x > 55 and mouse_y > 237 {
			if mouse_x < 409 and mouse_y < 308 {
					menu = 1;
					select = 1;
					keyboard_string = item_name;
			}
	}
	//when clicking in button 2
	//checking if the mouse is inside the box
	if mouse_x > 55 and mouse_y > 329 {
			if mouse_x < 409 and mouse_y < 396 {
					menu = 2;
			}
	}
}

//home button
if menu != 0 {
	if mouse_x > 199 and mouse_y > 591 {
			if mouse_x < 264 and mouse_y < 652 {
					menu = 0
			}
	}
}


//my pantry
if menu == 1 {
//next button
	if mouse_x > 402 and mouse_y > 593 {
			if mouse_x < 463 and mouse_y < 648 {
					menu = 2;
			}
	}
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 0;
			}
	}
//box 1
	if mouse_x > 41 and mouse_y > 201 {
		if mouse_x < 431 and mouse_y < 259 {
			if select == 2 {
				item_quantity = keyboard_string;
				keyboard_string = item_name;
			}
			select = 1;
		}
	}
	
//box 2
	if mouse_x > 37 and mouse_y > 346 {
		if mouse_x < 432 and mouse_y < 402  {
			if select == 1 {
				item_name = keyboard_string;
				keyboard_string = item_quantity;
			}
			select = 2;
		}
	}
}

if menu == 2 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 1;
			}
	}
}