//
//  ChapterCell.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/12/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class ChapterCell: UICollectionViewCell {
    //Outlets
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var sectionImage: UIImageView!
    
    func configureCell(bgImgName: String){
        bgImage.image = UIImage(named: bgImgName)
//        containerView.layer.cornerRadius = 10
    }
}
