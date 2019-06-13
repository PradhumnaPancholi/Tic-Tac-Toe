//
//  GameModel.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-13.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation

class GameModel {
    //currentPlayer
    var currentPlayer = "X"
    //array to record moves//
    var movesPlayed = Array(repeating: " ", count: 9)
    
    //when user clickes on a box//
    func movePlayed(tag: Int){
        //to store move into array//
        movesPlayed[tag-1] = currentPlayer
        
        //toggle current player//
        if(currentPlayer == "X") {
            currentPlayer = "O"
        }else{
            currentPlayer = "X"
        }
    }
}
