//
//  RPSGAME.swift
//  GameApp
//
//  Created by admin on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
class RPSGAME: NSObject {
    let numberOfLevels: Int
    var turn:[Turn]?
    let player1 : Player
    let player2 : Player
    let rules : [(Selection, Selection)->Selection?]
    
    //winnerDeterminationRule = {(player1: Player, player2: Player,
    //totalNumberOfPlannedTurns:Int, turnsLists:[Turn]?, isGameOver: (Int,[Turn]?)->Bool) -> Outcome?
    init (levels: Int, player1: Player, player2: Player, rules:()-> [(Selection, Selection) -> Selection?], w:(Player, Player,
        Int, [Turn]?,(Int,[Turn]?)->Bool) -> Outcome?, d: (Int, (Turn)?) -> Bool){
        self.numberOfLevels = levels
        self.player1 = player1
        self.player2 = player2
        self.rules = rules()
    }
}
