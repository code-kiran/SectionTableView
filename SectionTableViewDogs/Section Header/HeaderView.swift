//
//  HeaderView.swift
//  SectionTableViewDogs
//
//  Created by kiran on 8/17/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class HeaderView: UITableViewCell {

    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        headerImage.layer.cornerRadius = headerImage.frame.width / 2
        headerImage.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
