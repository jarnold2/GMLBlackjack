// Set the alignment to center.
draw_set_halign(fa_center);

// Set the font.
draw_set_font(fnt_blackjack_score);

if(!blackjack_bust)
{
	// Set the color (this is the same green we use for the buttons.)
	draw_set_color(#FFFFFF);
}
else 
{
	draw_set_color(#FF0000);
}

	draw_text(obj_dealer_score_spot.x, obj_dealer_score_spot.y, "Dealer Score:"+"\n" + $"{blackjack_score}");	