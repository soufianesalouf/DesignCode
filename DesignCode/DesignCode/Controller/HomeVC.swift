//
//  HomeVC.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/11/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var chapterCollection: UICollectionView!
    
    //var
    var chapters = ["Chapter.png", "Chapter.png", "Chapter.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        chapterCollection.delegate = self
        chapterCollection.dataSource = self
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chapters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChapterCell", for: indexPath) as? ChapterCell {
            cell.configureCell(bgImgName: chapters[indexPath.row])
            return cell
        } else {
            return ChapterCell()
        }
    }
    
    
}

