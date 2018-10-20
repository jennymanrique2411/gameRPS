//
//  GameViewController.swift
//  GameApp
//
//  Created by Davoodi, Alireza on 2018-10-15.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    private var presenter: GameViewControllerPresenter!
    
    var gameManager: GameManager! = GameManager.getGameManagerSharedInstance()

    @IBOutlet weak var firstPlayerFirstNameLabel: UILabel!

    @IBOutlet weak var secondPlayerFirstNameLabel: UILabel!
    @IBOutlet weak var firstRockButton: UIButton!
    @IBOutlet weak var firstPaperButton: UIButton!
    @IBOutlet weak var firstScissorButton: UIButton!

    @IBOutlet weak var player1ImageView: UIImageView!
    @IBOutlet weak var player2ImageView: UIImageView!


    @IBAction func firstRockDidTapped(_ sender: UIButton) {
        self .dismiss(animated: true) {
        }
    }

    @IBAction func firstPaperDidTapped(_ sender: UIButton) {
    }

    @IBAction func firstScissoerDidTapped(_ sender: UIButton) {
    }

    @IBOutlet weak var firstPlayerScoreLabel: UILabel!
    @IBOutlet weak var secondPlayerScoreLabel: UILabel!

    @IBOutlet weak var secondRockButton: UIButton!
    @IBOutlet weak var secondPaperButton: UIButton!
    @IBOutlet weak var secondScissorButton: UIButton!

    @IBAction func secondRockDidTapped(_ sender: UIButton) {
    }


    @IBAction func secondPaperDidTapped(_ sender: UIButton) {
    }

    @IBAction func secondScissorDidTapped(_ sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = GameViewControllerPresenter()
        self.presenter.delegate = self

        print("GameViewController-viewDidLoad")
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("GameViewController-viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("GameViewController-viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("GameViewController-viewDidDisappear")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK - Delegate
    func gameViewModelDidChanged(presenter: GameViewControllerPresenter,  viewModel: GameViewModel) {
        self.firstPlayerFirstNameLabel.text = viewModel.player1FirstName
        self.secondPlayerFirstNameLabel.text = viewModel.player2FirstName
        
        self.firstPlayerScoreLabel.text = String(viewModel.player1Score)
        self.secondPlayerScoreLabel.text = String(viewModel.player2Score)
        
        self.player1ImageView.image = viewModel.player1Image
        self.player2ImageView.image = viewModel.player2Image
        
        let p1Dict : [String: ToolStatus]! = viewModel.player1SymbolsStatus
        let p2Dict : [String: ToolStatus]! = viewModel.player2SymbolsStatus
        
        self.firstRockButton.setImage(p1Dict[Constants.ROCK], for: normal)
        self.firstRockButton.setImage(p1Dict[Constants.PAPER], for: normal)
        self.firstRockButton.setImage(p1Dict[Constants.SCISSOR], for: normal)
        
        self.secondRockButton.setImage(p2Dict[Constants.ROCK], for: normal)
        self.secondRockButton.setImage(p2Dict[Constants.PAPER], for: normal)
        self.secondRockButton.setImage(p2Dict[Constants.SCISSOR], for: normal)
        
    }

}
