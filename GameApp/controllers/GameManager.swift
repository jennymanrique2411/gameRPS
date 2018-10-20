//
//  GameManager.swift
//  GameApp
//
//  Created by Davoodi, Alireza on 2018-10-18.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
import UIKit

class GameManager: NSObject {

    var rpsGame: RPSGAME! = {
        didSet {
            let notif = NotificationCenter.default
            notif.post(Notification(name: Notification.Name(rawValue: Constants.NotificationConstants.RPS_GAME_STATUS_UPDATE_NOTIFICATION)))
        }
    };
    //private static var game: RPSGAME? = nil
    private static var gameManager: GameManager! = nil

    private override init() {
    }

    public static func getGameManagerSharedInstance()->GameManager
    {
        gameManager = GameManager()
        let p1 = gameManager.getPlayer1()
        let p2 = gameManager.getPlayer2()
        let numberOfLevel = gameManager.getLevelsOfTheGame()
        let rules = RuleMaker.winnerSelectionRules
        let winnerDeterminationRule = RuleMaker.winnerDeterminationRule
        let gameOverDeterminationRule = RuleMaker.gameOverRule

        gameManager.rpsGame = RPSGAME.getSharedRPSGameInstance(levels: numberOfLevel, player1: p1, player2: p2, rules: rules, w: winnerDeterminationRule, d: gameOverDeterminationRule)

        return gameManager
    }

    private func getPlayer1()->Player
    {
        let player = Player(name: "Sercan", imgURL: #imageLiteral(resourceName: "sercan"))
        return player
    }

    private func getPlayer2()->Player
    {
        let player = Player(name: "Cagatay", imgURL:#imageLiteral(resourceName: "Cagatay") )
        return player;
    }

    private func getLevelsOfTheGame()-> Int
    {
        return 5
    }
//    private init (levels: Int, player1: Player, player2: Player, rules: ()->[( Selection, Selection)->Selection?] , w: (Player, Player, Int, [Turn]?, (Int, [Turn]?)->Bool) -> Outcome? ,
//                  d: (Int,[Turn]?) -> Bool){
//
//        self.numberOfLevels = levels
//        self.player1 = player1
//        self.player2 = player2
//        self.rules = rules()
//    }

    //factory function
//    static func getSharedRPSGameInstanceSimple() -> RPSGAME!
//    {
//        if game==nil
//        {
//            game = RPSGAME()
//        }
//
//        return game;
//    }
//
//    //factory function
//    static func getSharedRPSGameInstance(levels: Int, player1: Player, player2: Player, rules: ()->[( Selection, Selection)->Selection?] , w: (Player, Player, Int, [Turn]?, (Int, [Turn]?)->Bool) -> Outcome? ,
//                                         d: (Int,[Turn]?) -> Bool) -> RPSGAME!
//    {
//        if game==nil
//        {
//            game = RPSGAME(levels: levels, player1: player1, player2: player2, rules: rules, w: w, d: d)
//        }
//
//        return game
//    }
}
