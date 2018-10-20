//
//  GameViewModel.swift
//  GameApp
//
//  Created by Jenny on 2018-10-19.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation
import UIKit

class GameViewModel : ViewModel
{
    var player1Score: Int = 0
    var player2Score: Int = 0
    
    var player1FirstName : String!
    var player2FirstName : String!
    
    var player1Image : UIImage?
    var player2Image : UIImage?
    
    var player1SymbolsStatus :[String: UIImage]!
    var player2SymbolsStatus : [String: UIImage]!
    
    init(player1Score: Int, player2Score: Int, player1FirstName: String, player2FirstName:String,
         player1Image: UIImage, player2Image: UIImage) {
        
        self.player1Score = player1Score
        self.player2Score = player2Score
        self.player1FirstName = player1FirstName
        self.player2FirstName = player2FirstName
        self.player1Image = player1Image
        self.player2Image = player2Image
        
        self.player1SymbolsStatus = [Constants.ROCK: GameToolStatus.GameToolImages.happyRock,
                                     Constants.PAPER: GameToolStatus.GameToolImages.happyPaper,
                                     Constants.SCISSOR: GameToolStatus.GameToolImages.happyScissor]
        
        self.player2SymbolsStatus =  [Constants.ROCK: GameToolStatus.GameToolImages.sadRock,
                                      Constants.PAPER: GameToolStatus.GameToolImages.sadPaper,
                                      Constants.SCISSOR: GameToolStatus.GameToolImages.sadScissor]

    }
    
}
