//
//  Turn.swift
//  GameApp
//
//  Created by admin on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
class Turn {
    var result : Outcome
    var player1: Selection
    var player2: Selection
    
    init(result: Outcome, player1: Selection, player2:Selection){
        self.result = result
        self.player1 = player1
        self.player2 = player2
    }
    
}
