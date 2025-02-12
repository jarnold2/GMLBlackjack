var length = array_length(hand);

if(playerStand == true)
{
	blackjack_score = 0;
	for(var i = 0; i < length; i++)
	{
		blackjack_score += normalizeCardScore(hand[i].number);
	}
	
	if(blackjack_score < 17)
	{
		drawCard();
	}
}
else {
	if(length > 0)
	{
		var tempScore = 0;
		for(var i = 0; i < length; i++)
		{
			if(i == 0)	
			{
				if(playerStand == true) 
				{
					tempScore += normalizeCardScore(hand[i].number);
				}
			}
			else 
			{
				tempScore += normalizeCardScore(hand[i].number);
			}
		}	
		blackjack_score = tempScore;
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

function drawCard()
{
	show_debug_message(obj_blackjack_deck.array_of_cards);
	var card = array_pop(obj_blackjack_deck.array_of_cards);
	show_debug_message(card);
	_instance = instance_create_depth(
		(obj_card_dealer_spot.x + obj_card_dealer_spot.card_x_adjustment), 
		obj_card_dealer_spot.y, 
		depth + obj_card_dealer_spot.card_depth_adjustment, 
		obj_blackjack_card,{
			suit : card.suit,
			number : card.number
		});
	_instance.image_xscale=obj_card_dealer_spot.card_x_scale;
	_instance.image_yscale=obj_card_dealer_spot.card_y_scale;
	
	obj_card_dealer_spot.card_x_adjustment += -40;
	obj_card_dealer_spot.card_depth_adjustment += -1;
	
	array_push(hand, _instance);
}