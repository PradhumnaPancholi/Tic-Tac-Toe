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
    //for number of moves played//
    var numberOfMovesPlayed = 0
    //helper variable to check for winner//
    var checkFor = "O"
    //variable to store result//
    var gameResult = ""
    
    
    //winning combinations//
    var winningPatterns = [
        [1,2,3],
        [4,5,6],
        [7,8,9],
        [1,4,7],
        [2,5,8],
        [3,6,9],
        [1,5,9],
        [3,5,7]
    ]
    
    //when user clickes on a box//
    func movePlayed(tag: Int){
        //for number of moves//
        numberOfMovesPlayed += 1
        //to store move into array//
        movesPlayed[tag-1] = currentPlayer
        
        //toggle current player//
        if(currentPlayer == "X") {
            currentPlayer = "O"
            checkFor = "X"//toggle value to verify with winnig patterns//
        }else{
            currentPlayer = "X"
            checkFor = "O"
        }
    }
    
    //function  for winning logic and if game is over//
    func checkIfGameIsOver() -> Bool {
        //a game needs to have atleast 5 moves for a player to win//
        if(numberOfMovesPlayed < 5) {
            return false
        }
        //for checking winning patterns for player//
        for i in 0..<8 {
            var winningPattern = winningPatterns[i]
            
            //verifying pateern and deciding gameResult//
            if(movesPlayed[winningPattern[0] - 1] == checkFor &&
               movesPlayed[winningPattern[1] - 1] == checkFor &&
               movesPlayed[winningPattern[2] - 1] == checkFor) {
                    //game is over//
                    //checkFor has won//
                    gameResult = checkFor + " Won!!!"
                    saveGame()
                    //return true and game result
                    return true
            }
        }
        
        //check for draw//
        if(numberOfMovesPlayed == 9) {
            gameResult = "It's a Draw"
            saveGame()
            return true
        }
        return false
    }
    
    //function to save game results//
    func saveGame() {
        
        var numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamesPlayed")
        //increment for current game
        numberOfGamesPlayed += 1
        //to store number of games played//
        UserDefaults.standard.set(numberOfGamesPlayed, forKey: "numberOfGamesPlayed")
        //to store number of game result associated with game//
        UserDefaults.standard.set(gameResult, forKey: "Result_" + String(numberOfGamesPlayed))
        //for timestamp of game//
        let currentTime = Date()
        UserDefaults.standard.set(currentTime, forKey: "TimeStamp_" + String(numberOfGamesPlayed))
    }
    
}
 
