//
//  ChapterTableViewCell.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/13/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class ChapterTableViewCell: UITableViewCell {
    
    //Outlets
    @IBOutlet weak var chapterAndNumberOfSection : UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //var
    var sections = ["12 sections","21 sections", "16 sections"]
    var chapters = ["Chapter.png", "Chapter.png", "Chapter.png"]
    
    func configureCell(chapterNumber: Int, numberOfSection: Int) {
        chapterAndNumberOfSection.text = "CHAPTER \(chapterNumber): \(numberOfSection) SECTIONS"
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}


extension ChapterTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let chapterCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChapterCell", for: indexPath) as? ChapterCell {
        chapterCell.configureCell(bgImgName: chapters[indexPath.row])
        return chapterCell
        } else {
            return UICollectionViewCell()
        }
    }
    
}
