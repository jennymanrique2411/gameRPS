//
//  Turn.swift
//  RockPaperSccisor.Swift
//
//  Created by Josue Benjamin Cabrera Rincon on 2018-10-16.
//  Copyright © 2018 Josue Benjamin Cabrera Rincon. All rights reserved.
//

import UIKit

class Turn: NSObject {
    var result : Outcome
    var player1 : Selection
    var player2 : Selection
    
    init(result: Outcome, player1: Selection, player2: Selection){
    
    self.result = result
    self.player1 = player1
    self.player2 = player2
        
    }
}
