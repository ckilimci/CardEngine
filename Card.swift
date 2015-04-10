//
//  Card.swift
//  CardView
//
//  Created by Caglar Kilimci on 8.04.2015.
//  Copyright (c) 2015 Caglar Kilimci. All rights reserved.
//

class Card {
    var content : String? = nil
    
    var isChosen : Bool = false
    var isMatched : Bool = false
    
    func match(cards : [String]) -> Int {
        var score = 0
        for card in cards {
            if card == self.content {
                score++
            }
        }
        return score
    }
    
    func contents() -> String? {
        return content
    }
}