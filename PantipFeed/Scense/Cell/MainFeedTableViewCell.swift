//
//  MainFeedTableViewCell.swift
//  PantipFeed
//
//  Created by thanathip.kumnarai on 18/7/2564 BE.
//

import UIKit

class MainFeedTableViewCell: UITableViewCell {

    @IBOutlet weak var topicImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var secondaryLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
