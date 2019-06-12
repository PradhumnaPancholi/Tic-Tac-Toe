//
//  PNP_TableCellTableViewCell.swift
//  Pradhumna_Yellow_TicTacToe
//
//  Created by Pradhumna Pancholi on 2019-06-12.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import UIKit

class PNP_TableCell: UITableViewCell {

    //outlets//
    @IBOutlet weak var whoWon: UILabel!
    @IBOutlet weak var resultImg: UIImageView!
    @IBOutlet weak var datePlayed: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
