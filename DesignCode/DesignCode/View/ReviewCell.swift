//
//  ReviewCell.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/12/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class ReviewCell: UICollectionViewCell {
    
    //Outlets
    @IBOutlet weak var reviewImage: UIImageView!
    
    func configureCell(reviewImage: String){
        self.reviewImage.image = UIImage(named: reviewImage)
    }
}
