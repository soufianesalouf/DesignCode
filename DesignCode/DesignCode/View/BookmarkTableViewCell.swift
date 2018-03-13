//
//  BookmarkTableViewCell.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/13/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class BookmarkTableViewCell: UITableViewCell {
    
    //OUtlets
    @IBOutlet weak var bookmarkImg: UIImageView!
    @IBOutlet weak var chapterTitle: UILabel!
    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var bookmarkDescription: UILabel!
    
    func configureCell(bookmark: Bookmark){
        bookmarkImg.image = UIImage(named: bookmark.bookmarkImageName)
        chapterTitle.text = bookmark.chapterTitle
        sectionTitle.text = bookmark.sectionTitle
        bookmarkDescription.text = bookmark.bookmarkDescription
    }
}
