//
//  CardCell.swift
//  CardTutorial-Final
//
//  Created by Riley Norris on 12/29/18.
//  Copyright © 2018 Riley Norris. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    /// Set up the cell
    func configure(picture: UIImage, title: String, description: String) {
        pictureView.image = picture
        titleLabel.text = title
        descriptionLabel.text = description
        
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 2.0
    }
}
