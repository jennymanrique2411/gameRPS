//
//  GameViewControllerPresenter.swift
//  GameApp
//
//  Created by Jenny on 2018-10-19.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import Foundation

protocol GameViewControllerPresenterProtocol : AnyObject{
    
    func gameViewModelDidChange (presenter: GameViewControllerPresenter, viewModel: GameViewModel)
    
}

class GameViewControllerPresenter : ViewControllerPresenter {
 
    var game: GameManager! = GameManager.getGameManagerSharedInstance()
    var gameViewModel : GameViewModel!
    weak var delegate: GameViewControllerPresenterProtocol?
    
    func rpsGameModelDidUpdated(rpsGame: RPSGAME) {
        gameViewModel.player1FirstName = rpsGame.player1.name
        gameViewModel.player2FirstName = rpsGame.player2.name
        
        gameViewModel.player1Score = rpsGame.player1.numberOfWin
        gameViewModel.player2Score = rpsGame.player2.numberOfWin
        
        gameViewModel.player1Image = rpsGame.player1.imgURL
        gameViewModel.player2Image = rpsGame.player2.imgURL
        
        if let del = self.delegate {
            del.gameViewModelDidChange(presenter: self, viewModel: gameViewModel)
        }
    }
    
}

