//
//  Deck.swift
//  CardView
//
//  Created by Caglar Kilimci on 8.04.2015.
//  Copyright (c) 2015 Caglar Kilimci. All rights reserved.
//
import Darwin

class Deck {
    var cards = [Card]()
    
    func addCard(card : Card) {
        addCard(card, atTop: false)
    }
    
    func addCard(card : Card, atTop : Bool) {
        if atTop {
            self.cards.insert(card, atIndex: 0)
        } else {
            self.cards.append(card)
        }
    }
    
    func drawCard() -> Card {
        let index = Int(arc4random()) % self.cards.count
        let randomCard = self.cards[index]
        return randomCard
    }
    
    func showCards() {
        for card in self.cards {
            println(card.contents())
        }
    }
}
