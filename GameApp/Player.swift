//
//  Player.swift
//  GameApp
//
//  Created by admin on 2018-10-16.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
class Player {
    var numberOfWin : Int = 0
    let name: String
    var status : GameToolsStatus?
    init(name: String){
        self.name = name
    }
}
