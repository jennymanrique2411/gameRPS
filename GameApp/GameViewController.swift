//
//  GameViewController.swift
//  GameApp
//
//  Created by admin on 2018-10-15.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var firstRockButton: UIButton!//optional that promises not to be nil
    @IBOutlet weak var firstPaperButton: UIButton!
    @IBOutlet weak var firstScissorButoon: UIButton!
    
    @IBOutlet weak var secondPlayerScoreLabel: UILabel!
    @IBOutlet weak var firstPlayerScoreLabel: UILabel!
    
    @IBOutlet weak var secondRockButton: UIButton!
    @IBOutlet weak var secondPaperButton: UIButton!
    @IBOutlet weak var secondScissorButton: UIButton!
    
    
    @IBAction func rockDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func paprDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func scissorDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func secondRockDidTapped(_ sender: UIButton) {
    }
    
    @IBAction func secondPaperDidTapped(_ sender: UIButton) {
    }
   
    @IBAction func secondScissorDidTapped(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
