//
//  TeamTableViewCell.swift
//  PremiereLeague
//
//  Created by Andry Pro on 02.03.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var foundetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
