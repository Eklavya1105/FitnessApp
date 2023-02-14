//
//  CityTableViewCell.swift
//  FitnessApp
//
//  Created by Naman Alagh on 14/02/23.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityImageView: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var placesCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
