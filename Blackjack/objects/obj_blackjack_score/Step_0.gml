var length = array_length(hand);

if(length > 0)
{	
	var tempScore = 0;
	for(var i = 0; i < length; i++)
	{
		tempScore += normalizeCardScore(hand[i].number);
	}
	blackjack_score = tempScore;	
	
	if(blackjack_score > 21)
	{
		blackjack_bust = true;	
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
