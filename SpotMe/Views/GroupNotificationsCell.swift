//
//  GroupNotificationsCell.swift
//  SpotMe
//
//  Created by Andrew Winton on 8/12/20.
//  Copyright © 2020 Riley Griffith. All rights reserved.
//

import UIKit

class GroupNotificationsCell: UITableViewCell {
    @IBOutlet weak var timeStamp: UILabel!
    @IBOutlet weak var notification: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
