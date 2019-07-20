//
//  AnimalTableViewCell.swift
//  FieldSurvey
//
//  Created by Peyton Tettleton on 7/19/19.
//  Copyright © 2019 Peyton Tettleton. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    
    @IBOutlet weak var AnimalIconImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
