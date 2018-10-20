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
    
}

