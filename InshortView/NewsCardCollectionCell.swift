//
//  NewsCardCollectionCell.swift
//  InshortView
//
//  Created by Mohammmad Tahir on 04/09/19.
//  Copyright © 2019 Mohammad Tahir. All rights reserved.
//

import UIKit

class NewsCardCollectionCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 8
    }
}
