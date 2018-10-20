//
//  Player.swift
//  RockPaperSccisor.Swift
//
//  Created by Josue Benjamin Cabrera Rincon on 2018-10-16.
//  Copyright © 2018 Josue Benjamin Cabrera Rincon. All rights reserved.
//

import UIKit

class Player: NSObject {
    var numberOfWin : Int = 0
    let name: String
    var status : GameToolStatus?
    let imgURL : UIImage!

    init(name: String, imgURL: UIImage){
        self.name = name
        self.imgURL = imgURL
    }

}
