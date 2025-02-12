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
			_instance = instance_create_depth(
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
	
			array_push(obj_blackjack_score.hand, _instance);
			
			break;
		case 1:
			_instance = instance_create_depth(
			(obj_card_dealer_spot.x + obj_card_dealer_spot.card_x_adjustment), 
			obj_card_dealer_spot.y, 
			depth + obj_card_dealer_spot.card_depth_adjustment, 
			obj_blackjack_card,{
				suit : card.suit,
				number : card.number
			});
			
			_instance.sprite_index = spr_card_back;
			
			_instance.image_xscale=obj_card_dealer_spot.card_x_scale;
			_instance.image_yscale=obj_card_dealer_spot.card_y_scale;
	
			obj_card_dealer_spot.card_x_adjustment += -40;
			obj_card_dealer_spot.card_depth_adjustment += -1;
			
			array_push(obj_dealer_score.hand, _instance);
			
			break;
		case 3:
			
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
	
			array_push(obj_dealer_score.hand, _instance);
			
			break;
	}
}


