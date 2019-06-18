//
//  GameControllerViewController.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-12.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit
import AVFoundation

class GameController: UIViewController {
    //outlet to display msges//
    @IBOutlet weak var messenger: UILabel!
    //initialize game model//
    var game = GameModel()
    //variable to accept touch//
    var acceptTouches = true
    //for sound effect//
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //function for sound effect and player//
    func playClickSound() {
        //to prepare sound effect//
        let path = Bundle.main.path(forResource: "Click", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        //to load file on player//
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
        } catch let error as NSError{
            print(error)
        }
        
    }
    
    //action when box inside grid is pressed//
    @IBAction func boxPressed(_ sender: UIButton) {
        print(sender.tag)
        print(game.movesPlayed)
        print(game.gameResult)
        //to add player value in box//
        if(sender.currentTitle == nil && acceptTouches){
            //display currentPlayer value on box//
            sender.setTitle(game.currentPlayer, for: .normal)
            //play sound effect//
            playClickSound()
            //toggle player//
            game.movePlayed(tag: sender.tag)
            //check if game is over//
            if(game.checkIfGameIsOver()) {
                messenger.text = game.gameResult
                //to stop accepting new touches//
                acceptTouches = false
            }else{
                //displaying message for next turn//
                messenger.text = "\(game.currentPlayer)'s turn"
            }
        }else{
            
        }
    }
    
}
