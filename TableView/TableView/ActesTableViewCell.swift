//
//  ActesTableViewCell.swift
//  TableView
//
//  Created by 10.13 on 17/5/17.
//  Copyright © 2017 xgubianas. All rights reserved.
//

import UIKit

class ActesTableViewCell: UITableViewCell {

    
    @IBOutlet var data: UILabel!
    @IBOutlet var nom: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
