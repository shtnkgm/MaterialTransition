//
//  ListViewCell.swift
//  MaterialTransition
//
//  Created by Shota Nakagami on 2019/04/01.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit

class ListViewCell: UICollectionViewCell {
    static let className = String(describing: ListViewCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 20
//        layer.shadowOffset = CGSize(width: 0, height: 5)
//        layer.shadowRadius = 5
//        layer.shadowOpacity = 0.8
//        clipsToBounds = false
    }
}
