//
//  ViewController.swift
//  GameApp
//
//  Created by Davoodi, Alireza on 2018-10-12.
//  Copyright © 2018 Davoodi, Alireza. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("StartViewController-viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidDisappear(_ animated: Bool) {
        //super.viewDidDisappear(animated)
        print("StartViewController-viewDidDisappear")
    }

}

