//
//  RPSGAME.swift
//  RockPaperSccisor.Swift
//
//  Created by Josue Benjamin Cabrera Rincon on 2018-10-16.
//  Copyright © 2018 Josue Benjamin Cabrera Rincon. All rights reserved.
//

import UIKit


class RPSGAME: NSObject {

    var numberOfLevels: Int = 0
    var turn : [Turn]?
    var player1 : Player! = nil
    var player2 : Player! = nil
    var rules : [(Selection,Selection)-> Selection?]! = nil

    //private static var game: RPSGAME? = nil
    private static var game: RPSGAME? = nil

    private override init() {
    }

    private init (levels: Int, player1: Player, player2: Player, rules: ()->[( Selection, Selection)->Selection?] , w: (Player, Player, Int, [Turn]?, (Int, [Turn]?)->Bool) -> Outcome? ,
                  d: (Int,[Turn]?) -> Bool){

        self.numberOfLevels = levels
        self.player1 = player1
        self.player2 = player2
        self.rules = rules()
    }

    //factory function
    static func getSharedRPSGameInstanceSimple() -> RPSGAME!
    {
        if game==nil
        {
            game = RPSGAME()
        }

        return game;
    }

    //factory function
    static func getSharedRPSGameInstance(levels: Int, player1: Player, player2: Player, rules: ()->[( Selection, Selection)->Selection?] , w: (Player, Player, Int, [Turn]?, (Int, [Turn]?)->Bool) -> Outcome? ,
                                  d: (Int,[Turn]?) -> Bool) -> RPSGAME!
    {
        if game==nil
        {
            game = RPSGAME(levels: levels, player1: player1, player2: player2, rules: rules, w: w, d: d)
        }

        return game
    }
}
