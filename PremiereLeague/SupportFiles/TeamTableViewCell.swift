//
//  TeamTableViewCell.swift
//  PremiereLeague
//
//  Created by Andry Pro on 02.03.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    // MARK: - IB Outlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var foundetLabel: UILabel!
    
    
    // MARK: - Public Methods
    func configure(with team: Club) {
        teamNameLabel.text = team.team?.name
        DispatchQueue.global().async {
            guard let stringURL = team.team?.logo else { return }
            guard let imageURL = URL(string: stringURL) else { return }
            guard let imageData = try? Data(contentsOf: imageURL) else { return }
            DispatchQueue.main.async {
                self.logoImageView.image = UIImage(data: imageData)
            }
        }
    }
}
