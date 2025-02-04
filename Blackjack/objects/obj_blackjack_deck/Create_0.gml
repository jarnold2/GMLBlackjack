//card type
card = function(_suit, _number) constructor
{
    suit = _suit;
	number = _number;
} 

array_of_cards = [];

for (var _suit = 0; _suit < 4; _suit++)
{
	// Iterate through each possible number.
	for (var _number = 0; _number < 13; _number++)
	{
		// Now lets generate a card.
		var _card = new card(_suit,_number);
			
		// And push it at the end of our array.
		array_push(array_of_cards, _card);
	}
}

array_of_cards = array_shuffle(array_of_cards);

