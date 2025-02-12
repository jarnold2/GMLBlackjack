//Disable and/or hide player buttons
obj_hit.visible = false;
obj_stand.visible = false;

//Reveal dealer hidden card
obj_dealer_score.hand[0].sprite_index = obj_dealer_score.hand[0].card_face;
obj_dealer_score.playerStand = true;
