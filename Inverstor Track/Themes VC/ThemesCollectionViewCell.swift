//
//  ThemesCollectionViewCell.swift
//  Inverstor Track
//
//  Created by leyo babu on 16/11/20.
//  Copyright © 2020 leyo babu. All rights reserved.
//

import UIKit

class ThemesCollectionViewCell: UICollectionViewCell {

// MARK:- Themes Cell Variables
    static let identifier = "customCell"
    var titleLabel = UILabel()
    var thumpnailImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor =  UIColor(hexFromString: "#fafbfc")
        contentView.layer.borderWidth = 0.5
        contentView.layer.borderColor = UIColor(hexFromString: "#eef0f9").cgColor
        contentView.addSubview(titleLabel)
        contentView.addSubview(thumpnailImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = CGRect(x: 5, y: contentView.frame.size.height - 65, width: contentView.frame.size.width-10, height: 50)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.numberOfLines = 2
        thumpnailImageView.frame = CGRect(x: 5, y: 15, width: contentView.frame.size.width-10, height: contentView.frame.size.height-80)
        thumpnailImageView.contentMode = .scaleAspectFit
        contentView.layer.cornerRadius = 10
    }
    
    
}
