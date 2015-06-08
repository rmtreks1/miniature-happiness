//
//  MediaTableViewCell.swift
//  MiniatureHappiness
//
//  Created by Roshan Mahanama on 8/06/2015.
//  Copyright (c) 2015 RMTREKS. All rights reserved.
//

import UIKit

class MediaTableViewCell: UITableViewCell {

    @IBOutlet var mediaImage: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
