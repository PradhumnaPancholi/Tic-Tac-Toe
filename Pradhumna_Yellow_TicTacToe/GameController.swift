//
//  GameControllerViewController.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-12.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //action when box inside grid is pressed//
    
    @IBAction func boxPressed(_ sender: UIButton) {
        print(sender.tag)
        //to add player value in box//
        if(sender.currentTitle == nil){
                sender.setTitle("X", for: .normal)
        }
        
    }
    
   

}
