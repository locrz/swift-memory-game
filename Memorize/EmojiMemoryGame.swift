//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Locrz on 15/04/21.
//

import SwiftUI

class EmojiMemoryGame {
    var memoryGameModel: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🏖","🎨","🤡","🏆","🙈","👻","🔥","☂️","🚀","🎠","🛖","🧨","🦠"].shuffled()
        let randomNumberOfPairs = Int.random(in: 2...5)

        return MemoryGame<String>(numberOfPairOfCards: randomNumberOfPairs) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return memoryGameModel.cards.shuffled()
    }
    
    // MARK: Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        memoryGameModel.choose(card: card)
    }
}
