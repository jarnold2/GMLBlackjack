// Set the alignment to center.
draw_set_halign(fa_center);

// Set the font.
draw_set_font(fnt_blackjack_score);

if(!blackjack_bust)
{
	// Set the color (this is the same green we use for the buttons.)
	draw_set_color(#FFFFFF);
	
	draw_text(100, 100, "Score:"+"\n" + $"{blackjack_score}");	
}
else 
{
	draw_set_color(#FF0000);
	
	draw_text(100, 100, "Score:"+"\n" + $"{blackjack_score}");	
}