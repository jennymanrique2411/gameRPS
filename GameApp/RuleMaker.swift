//
//  RuleMaker.swift
//  GameApp
//
//  Created by admin on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
struct RuleMaker {

    enum Combination:Int {
        case rockPaper = 7
        case scissorsPaper = 4
        case scissorsRock = 5
    }
    
    static let rule1 = {(s1:Selection, s2:Selection)-> Selection? in if s1.rawValue +
        s2.rawValue == Combination.scissorsPaper.rawValue {return .scissors}; return nil}
    static let rule2 = {(s1:Selection, s2:Selection)-> Selection? in if s1.rawValue +
        s2.rawValue == Combination.rockPaper.rawValue {return .paper}; return nil}
    static let rule3 = {(s1:Selection, s2:Selection)-> Selection? in if s1.rawValue +
        s2.rawValue == Combination.scissorsRock.rawValue {return .rock}; return nil}
    static let gameOverRule = {(totalNumberOfPlannedTurns: Int, turnsLists:[Turn]?) -> Bool
        in
        if let t = turnsLists
        {
            if t.count == totalNumberOfPlannedTurns {
                return true
            }
        }
        return false
    }
    
    static let winnerDeterminationRule = {(player1: Player, player2: Player,
        totalNumberOfPlannedTurns:Int, turnsLists:[Turn]?, isGameOver: (Int,[Turn]?)->Bool) -> Outcome?
        in
        if isGameOver(totalNumberOfPlannedTurns, turnsLists){
           let result = Utilities.intEqualityPredicate(player1.numberOfWin, player2.numberOfWin)
            switch result {
                case 1: return Outcome.play1Win
                case 2: return Outcome.play2Win
            default :
                return Outcome.tie
            }
        }
        return nil
    }
    
    static func winnerSelectionRulesSupplier() -> [(Selection, Selection) -> Selection?] {
        let rulesArray = [RuleMaker.rule1, RuleMaker.rule2, RuleMaker.rule3]
        return rulesArray
    }
}
