//
//  PlayingDeck.swift
//  CardView
//
//  Created by Caglar Kilimci on 8.04.2015.
//  Copyright (c) 2015 Caglar Kilimci. All rights reserved.
//

class PlayingCardDeck: Deck {
    
    override init() {
        super.init()
        for suit in PlayingCard.constants.validSuits {
            for rank in Range(1...PlayingCard.constants.maxRank) {
                println("suit=\(suit) rank=\(PlayingCard.constants.rankStrings[rank])")
                var card = PlayingCard()
                card.suit = suit
                card.rank = rank
                self.addCard(card)
            }
        }
    }
    
}
