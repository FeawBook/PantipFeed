//
//  LoadingTableViewCell.swift
//  PantipFeed
//
//  Created by thanathip.kumnarai on 25/7/2564 BE.
//

import UIKit

class LoadingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
