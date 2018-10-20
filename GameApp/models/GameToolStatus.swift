//
//  GameToolStatus.swift
//  RockPaperSccisor.Swift
//
//  Created by Josue Benjamin Cabrera Rincon on 2018-10-16.
//  Copyright © 2018 Josue Benjamin Cabrera Rincon. All rights reserved.
//

import UIKit

class GameToolStatus: NSObject {
    
   public struct GameToolImages {
        static let happyRock: UIImage = #imageLiteral(resourceName: "RockWinner")
        static let happyPaper: UIImage = #imageLiteral(resourceName: "WinnerPaper")
        static let happyScissor: UIImage = #imageLiteral(resourceName: "WinnerScissor")
        
        static let sadRock: UIImage = #imageLiteral(resourceName: "LoserRock")
        static let sadPaper: UIImage = #imageLiteral(resourceName: "LoserPaper")
        static let sadScissor: UIImage = #imageLiteral(resourceName: "LoserScissor")
    
    }

    let paper : ToolStatus = .happy
    let scissors : ToolStatus = .happy
    let rock : ToolStatus = .happy
}
