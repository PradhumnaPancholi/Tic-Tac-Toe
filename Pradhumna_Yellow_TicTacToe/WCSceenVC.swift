//
//  WCSceenVC.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-15.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class WCSceenVC: UIViewController {

    @IBOutlet weak var startGameBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startGameBtn.pulsate()
    }

    @IBAction func startGameBtnPressed(_ sender: UIButton) {
        sender.pulsate()
    }
    
}
