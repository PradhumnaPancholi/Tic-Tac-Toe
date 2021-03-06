//
//  TableVCTableViewController.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-12.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class TableVC: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamesPlayed")
        return numberOfGamesPlayed
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pnp_tableCell", for: indexPath) as! PNP_TableCell
        
        //to retrieve data from userdefaults//
        let numberOfGamesPlayed = UserDefaults.standard.integer(forKey: "numberOfGamesPlayed")
        let thisCellIndex = numberOfGamesPlayed  - indexPath.row //to get data in reverse order//
        let gameResult = UserDefaults.standard.string(forKey: "Result_" + String(thisCellIndex))
        let timeStamp = UserDefaults.standard.object(forKey: "TimeStamp_" + String(thisCellIndex)) as! Date
        //for order of moves of current cell//
        cell.orderOfMoves = (UserDefaults.standard.array(forKey: "OrderOfMoves_" + String(thisCellIndex)) as! [Int])
        
        //dateformatter setup/config//
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        // Configure the cell && and to display data accordingly//
        cell.datePlayed.text = dateFormatter.string(from: timeStamp)
        cell.whoWon.text = gameResult
        if( gameResult == "X Won!!!"){
            cell.resultImg.image = UIImage(named: "yellow_win")
        } else {
            cell.resultImg.image = UIImage(named: "yellow_loss")
        }
        

        return cell
    }
    
//---------------------------------------------------------------------------------------//
    //for showing game history//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //for new game
        if(segue.identifier == "newGame") {
            return
        }
        
        //send data for game history//
        let thisCell = sender as! PNP_TableCell
        
        let destinationVC = segue.destination as! GameController
        destinationVC.isReplay = true
        destinationVC.orderOfMoves = thisCell.orderOfMoves!
    }
    

}
