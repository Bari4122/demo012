added = 0;
click_block = 0;

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
	//add item button
	if mouse_x > 55 and mouse_y > 148 {
			if mouse_x < 409 and mouse_y < 222 {
					menu = 1;
					select = 1;
					keyboard_string = item_name;
			}
	}
	
		
	if mouse_x > 55 and mouse_y > 239 {
			if mouse_x < 409 and mouse_y < 306 {
					menu = 2;
			}
	}
	
	//my cookbook button
	if mouse_x > 55 and mouse_y > 325 {
			if mouse_x < 409 and mouse_y < 396 {
					menu = 3;
					click_block = 1;
			}
	}
			
	if mouse_x > 55 and mouse_y > 416 {
			if mouse_x < 409 and mouse_y < 485 {
					menu = 4;
					search = 0;
					keyboard_string = 0;
					click_block_2 = 1;
					alarm[0] = room_speed / 2;

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
	
//value type
	if mouse_x > 375 and mouse_y > 342 {
		if mouse_x < 435 and mouse_y < 401  {
			if type_selection == 1 {
				type_selection = 2;
			}
			
			if type_selection == 0 {
				type_selection = 1;
			}
			
			if type_selection == 2 {
				type_selection = 0;
			}	
		}
	}

//change the value type
	if type_selection == 1 {
		if mouse_x > 380 and mouse_y > 414 {
			if mouse_x < 430 and mouse_y < 428  {
				type = "value";
			}
		}
	
		if mouse_x > 380 and mouse_y > 429 {
			if mouse_x < 435 and mouse_y < 448  {
				type = "lbs";
			}
		}
	
		if mouse_x > 380 and mouse_y > 449 {
			if mouse_x < 435 and mouse_y < 469  {
				type = "oz";
			}
		}
	
		if mouse_x > 380 and mouse_y > 470 {
			if mouse_x < 435 and mouse_y < 486  {
				type = "cups";
			}
		}
	
		if mouse_x > 380 and mouse_y > 487 {
			if mouse_x < 435 and mouse_y < 506  {
				type = "L";
			}
		}
	
		if mouse_x > 380 and mouse_y > 507 {
			if mouse_x < 435 and mouse_y < 532  {
				type = "mL";
			}
		}
	}
	
//confirm add item
	if mouse_x > 150 and mouse_y > 474 {
			if mouse_x < 314 and mouse_y < 532  {
				if select == 1 {
					
					if string_length(item_quantity) > string_length(string_digits(item_quantity)) {
						fail = 1;
						alarm[0] = room_speed / 2;
					}
				}
					
				if select == 2 {
					
					if string_length(keyboard_string) > string_length(string_digits(keyboard_string)) {
						fail = 1;
						alarm[0] = room_speed / 2;
					}
				}
						
				if fail == 0 {
					if select == 1 {
						pantry_list += keyboard_string + "  " + item_quantity + " " + type + "\n";
					}
				
					if select == 2 {
						pantry_list += item_name + "  " + keyboard_string + " " + type + "\n";
					}
					
					added = 1;
					keyboard_string = "";
					item_quantity = "1";
					item_name = "";
					type = "value";
				}
			}
	}
}
			
			

if menu == 2 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 0;
			}
	}
}
	
if menu == 3 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 0;
			}
	}
	
//reading recipes
	
	if mouse_x > 16 and mouse_y > 142 {
			if mouse_x < 433 and mouse_y < 254 {
				if r_one == 1 and click_block == 0 {
					menu = 6;
				}
			}
	}
	
	if mouse_x > 16 and mouse_y > 280 {
			if mouse_x < 433 and mouse_y < 391 {
				if r_two == 1 and click_block == 0 {
					menu = 7;
				}
			}
	}
	
	if mouse_x > 16 and mouse_y > 422 {
			if mouse_x < 433 and mouse_y < 531 {
				if r_three = 1 and click_block == 0  {
					menu = 8;
				}
			}
	}
	
//removing recipes
	if mouse_x > 438 and mouse_y > 136 {
		if mouse_x < 466 and mouse_y < 163 {
			if r_one == 1 {
				r_one = 0;
				removed = 1;
			}
		}
	}
	
	if mouse_x > 438 and mouse_y > 275 {
		if mouse_x < 466 and mouse_y < 304 {
			if r_two == 1 {
				r_two = 0;
				removed = 1;
			}
		}
	}
	
	if mouse_x > 438 and mouse_y > 417 {
		if mouse_x < 466 and mouse_y < 445 {
			if r_three == 1 {
				r_three = 0;
				removed = 1;
			}
		}
	}
}
	
if menu == 4 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 0;
			}
	}
	
	if mouse_x > 182 and mouse_y > 345 {
			if mouse_x < 279 and mouse_y < 444 {
				if click_block_2 == 0 {
					
					search = 1;
					click_block_2 = 1;
					alarm[0] = room_speed / 2;
				}
			}
	}
	
	if mouse_x > 16 and mouse_y > 142 {
			if mouse_x < 448 and mouse_y < 250 {
				if click_block == 0 and click_block_2 == 0 {
					r_one = 1;
					add_recipe = 1;
					alarm[0] = room_speed / 2;
				}
			}
	}
			
	if mouse_x > 16 and mouse_y > 283 {
			if mouse_x < 448 and mouse_y < 391 {
				if click_block == 0 and click_block_2 == 0 {
					r_two = 1;
					add_recipe = 1;
					alarm[0] = room_speed / 2;
				}
			}
	}
	
	if mouse_x > 16 and mouse_y > 422 {
			if mouse_x < 448 and mouse_y < 531 {
				if click_block == 0 and click_block_2 == 0 {
					r_three = 1;
					add_recipe = 1;
					alarm[0] = room_speed / 2;
				}
			}
	}
}

if menu == 6 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 3;
			}
	}
}

if menu == 7 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 3;
			}
	}
}

if menu == 8 {
//back button
	if mouse_x > 3 and mouse_y > 591 {
			if mouse_x < 67 and mouse_y < 648 {
					menu = 3;
			}
	}
}