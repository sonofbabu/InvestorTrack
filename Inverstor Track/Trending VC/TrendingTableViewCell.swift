//
//  TrendingTableViewCell.swift
//  Inverstor Track
//
//  Created by leyo babu on 16/11/20.
//  Copyright © 2020 leyo babu. All rights reserved.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

    @IBOutlet weak var trendingMainView: UIView!
    @IBOutlet weak var trendingImage: UIImageView!
    @IBOutlet weak var trendingTitle: UILabel!
    @IBOutlet weak var trendingSubtitle: UILabel!
    @IBOutlet weak var trendingStockView: UIView!
    @IBOutlet weak var trendingStockLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.trendingStockView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
