// Set the alignment to center.
draw_set_halign(fa_center);

// Set the font.
draw_set_font(fnt_blackjack_score);

if(!blackjack_bust)
{
	draw_set_color(#FFFFFF);
}
else 
{
	draw_set_color(#FF0000);
}

draw_text(obj_player_score_spot.x, obj_player_score_spot.y, "Player Score:"+"\n" + $"{blackjack_score}");	