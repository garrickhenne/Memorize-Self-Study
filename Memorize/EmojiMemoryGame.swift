//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Garrick Henne on 2020-05-24.
//  Copyright © 2020 Garrick Henne. All rights reserved.
//

import SwiftUI
//ObservableObject gives this class a free objectWillChange variable
class EmojiMemoryGame: ObservableObject {
    //@Published excludes reason to call objectWillChange.send()
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐶","🐱","🦊"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    
    //MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
    
    func resetGame() {
        model.resetScore()
        model = EmojiMemoryGame.createMemoryGame()
    }
    
    
    func addScore() {
        model.addScore()
    }
    
    func getScore() -> Int {
        model.getScore()
    }
}

