//
//  PlayingCard.swift
//  CardView
//
//  Created by Caglar Kilimci on 8.04.2015.
//  Copyright (c) 2015 Caglar Kilimci. All rights reserved.
//

class PlayingCard: Card {
    
    var rank : Int?
    var suit : String? { didSet { checkSuit() } }
    

    
    func checkSuit() {
        if !contains(constants.validSuits, self.suit!) {
            self.suit = nil
        }
    }
    
    override func contents() -> String? {
        var content : String = ""
        if let rank = self.rank {
            content += constants.rankStrings[rank]
        }
        if let suit = self.suit {
            content += suit
        }
        return content
    }
    
    
    
    internal struct constants {
        static let rankStrings : [String] = ["?", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        static let validSuits : [String] = ["♠️", "♥️", "♣️", "♦️"]
        static let maxRank : Int = constants.rankStrings.count - 1
    }
}