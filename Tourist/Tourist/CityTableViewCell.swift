//
//  CityTableViewCell.swift
//  Tourist
//
//  Created by laputer on 9/28/22.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgCity: UIImageView!
    
    @IBOutlet weak var lblCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
