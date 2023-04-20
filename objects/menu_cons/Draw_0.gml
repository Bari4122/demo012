draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_set_alpha(1);

//main menu
if menu == 0 {
	//draw the background. adjusted x and y to fit screen
	draw_sprite(menu_background, 1, -23, -29);

	//create the buttons
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
	
}

if menu == 2 {
	//draw the background. adjusted x and y to fit screen
	draw_sprite(my_pantry_background_2, 1, -177, -83);
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


