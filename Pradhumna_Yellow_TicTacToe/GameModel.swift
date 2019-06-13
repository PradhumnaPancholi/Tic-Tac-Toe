//
//  GameModel.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-13.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import Foundation

class GameModel {
    
    var currentPlayer = "X"
    
    //when user clickes on a box//
    func movePlayed(tag: Int){
        //toggle current player//
        if(currentPlayer == "X") {
            currentPlayer = "O"
        }else{
            currentPlayer = "X"
        }
    }
}
