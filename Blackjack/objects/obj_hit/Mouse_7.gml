var card = array_pop(obj_blackjack_deck.array_of_cards);

if(card)
{
	var _instance = instance_create_depth(x + (card_x_pos + card_x_adjustment), y + card_y_pos, depth + card_depth_adjustment, obj_blackjack_card,{
			suit : card.suit,
			number : card.number
	});

	_instance.image_xscale=card_x_scale;
	_instance.image_yscale=card_y_scale;

	card_x_adjustment += 40;
	card_depth_adjustment += -1;
	
	obj_blackjack_score.blackjack_score += normalizeCardScore(card.number);
	
	if(obj_blackjack_score.blackjack_score > 21)
	{
		obj_blackjack_score.blackjack_bust = true;
	}
} 

function normalizeCardScore(cardScore)
{
	//make the card score equal to the values
	cardScore += 1;
	
	if(cardScore >= 10)
	{
		return 10;
	}
	return cardScore;
}