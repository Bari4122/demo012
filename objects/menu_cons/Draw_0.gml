draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_set_alpha(1);


//main menu
if menu == 0 {
	//draw the background. adjusted x and y to fit screen
	draw_sprite(menu_background, 1, -23, -29);

	//create the buttons
	
	//add item
	draw_sprite(add_item, 1, -22, -40);
	
	//my pantry
	draw_sprite(my_pantry, 1, -22, 70);

	//my cookbook
	draw_sprite(my_cookbook, 1, -15, 140);

	//recipe search
	draw_sprite(recipe_search, 1, -10, 225);
	
	//credits
	draw_text(5, 585, "Daniel Mullin");
	draw_text(5, 600, "Sierra Coxton");
	draw_text(5, 615, "Savannah Hitney");
	draw_text(5, 630, "Mohammed Khalafalla");
}


if menu == 1 {
	//draw the background. adjusted x and y to fit screen
	draw_sprite(my_pantry_background_1, 1, -167, -86);
	if fail == 1 {
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_set_color(c_red);
		draw_text(245, 135, "Add item failed \n Value must be a positive integer");
		draw_set_color(c_black);
		draw_set_halign(fa_left);
		draw_set_valign(fa_left);
	}
	
	if select == 1 {
		draw_text(54, 222, keyboard_string + bar);
	} else {
		draw_text(54, 222, item_name);
	}
	if select == 2 {
		draw_text(54, 365, string(keyboard_string) + bar);
	} else {
		draw_text(54,365, item_quantity);
	}
	
	//draw the value type
	draw_set_halign(fa_center);
	draw_text(403, 365, type);
	draw_set_halign(fa_left);
	
	if type_selection == 1 {
		draw_rectangle_color(375, 342, 435, 402, c_yellow, c_yellow, c_yellow, c_yellow, true);
		draw_text(380, 410, "value");
		draw_text(380, 430, "lbs");
		draw_text(380, 450, "oz");
		draw_text(380, 470, "cups");
		draw_text(380, 490, "L");
		draw_text(380, 510, "mL");
	}
	
	if added == 1 {
		draw_set_color(c_green);
		draw_text(105, 550, "Item successfully added!");
		draw_set_color(c_black);
	}
}

//max string length
if string_length(keyboard_string) > 24 {
	keyboard_string = string_delete(keyboard_string, 25, 1);
}

if menu == 2 {
	//draw the background. adjusted x and y to fit screen
	draw_sprite(my_pantry_background_2, 1, -177, -83);
	draw_text(50, 95, pantry_list);
}


if menu == 3 {
	draw_sprite(my_cookbook_background, 1, 0, 0);
	if r_one == 1 {
		draw_sprite(one, 1, 12, 140);
		draw_sprite(remove, 1, 438, 137);
	}
	
	if r_two == 1 {
		draw_sprite(two, 1, 15, 279);
		draw_sprite(remove, 1, 438, 275);
	}
	
	if r_three == 1 {
		draw_sprite(three, 1, 15, 419);
		draw_sprite(remove, 1, 438, 416);
	}
	
	if removed == 1 {
		draw_set_color(c_green);
		draw_text(100,550, "Recipe removed from cookbook!");
		draw_set_color(c_black);
	}
}

if menu == 4 {
	if search == 0 {
		draw_sprite(recipe_search_background, 1, 0, 0);
	} else draw_sprite(search_results, 1, 0, 0);
	
//search bar
	if search == 0 {
		draw_text(40, 234, keyboard_string + bar);
	}
	if search == 1 {
		draw_text(20, 100, "  Click a recipe to add it to your cookbook!");
	}
	if add_recipe == 1 and click_block == 0 {
		draw_set_color(c_green);
		draw_text(100,550, "Recipe added to cookbook!");
		draw_set_color(c_black);
	}
	
}

if menu == 6 {
	draw_sprite(chicken_piccata, 1, 0, 0);
	
}

if menu == 7 {
	draw_sprite(creamy_tomato_chicken, 1, 0, 0);
	
}

if menu == 8 {
	draw_sprite(one_pan_honey_mustard_chicken, 1, 0, 0);
	
}

//others
//mouse x and y position drawn on screen
draw_text(5,5, mouse_x);
draw_text(45,5, mouse_y);

//click circle radius drawn on screen
draw_text(5, 25, radius);



//draw circle
if radius < 40 {
	draw_set_alpha(4 / radius);
	draw_circle_color(click_x, click_y, radius, c_yellow, c_yellow, false);
	radius += 4;
}


if menu != 0 {
	draw_set_alpha(0.75);
	draw_sprite(home, 1, 200, 588);
	draw_set_alpha(1);
}

