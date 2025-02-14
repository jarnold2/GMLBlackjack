obj_deal.visible = false;
obj_hit.visible = true;
obj_stand.visible = true;

for(var whateverYouWant = 0; whateverYouWant <= 4; whateverYouWant++)
{
	var card = array_pop(obj_blackjack_deck.array_of_cards);
	
	switch(whateverYouWant)
	{
		case 0:
		case 2:
			var _instance = instance_create_depth(
			(obj_card_player_spot.x + obj_hit.card_x_adjustment), 
			obj_card_player_spot.y, 
			depth + obj_hit.card_depth_adjustment, 
			obj_blackjack_card,{
				suit : card.suit,
				number : card.number
			});

			_instance.image_xscale=obj_hit.card_x_scale;
			_instance.image_yscale=obj_hit.card_y_scale;
	
			obj_hit.card_x_adjustment += 40;
			obj_hit.card_depth_adjustment += -1;
	
			obj_blackjack_score.blackjack_score += normalizeCardScore(card.number);
			
			break;
		case 1:
			var _instance = instance_create_depth(
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
	
			obj_dealer_score.blackjack_score += normalizeCardScore(card.number);
			
			break;
		case 3:
			var _instance = instance_create_depth(
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
	
			obj_dealer_score.blackjack_score += normalizeCardScore(card.number);
			
			break;
	}
}







//if(card)
//{
//	var _instance = instance_create_depth
//		(x + (card_x_pos + card_x_adjustment), 
//		y + card_y_pos, 
//		depth + card_depth_adjustment, 
//		obj_blackjack_card,{
//			suit : card.suit,
//			number : card.number
//	});

//	_instance.image_xscale=card_x_scale;
//	_instance.image_yscale=card_y_scale;

//	card_x_adjustment += 40;
//	card_depth_adjustment += -1;
	
//	obj_blackjack_score.blackjack_score += normalizeCardScore(card.number);
	
//	if(obj_blackjack_score.blackjack_score > 21)
//	{
//		obj_blackjack_score.blackjack_bust = true;
//	}
//} 
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