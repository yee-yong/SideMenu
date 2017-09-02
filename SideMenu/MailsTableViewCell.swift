//
//  MailsTableViewCell.swift
//  SideMenu
//
//  Created by Yee on 08/28/17.
//  Copyright (c) 2017 YY. All rights reserved.
//

import UIKit

class MailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var senderImageView: UIImageView!
    @IBOutlet weak var senderNameLabel: UILabel!
    @IBOutlet weak var titleOfMailLabel: UILabel!
    @IBOutlet weak var contentOfMailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
