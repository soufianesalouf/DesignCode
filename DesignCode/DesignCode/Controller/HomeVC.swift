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
    @IBOutlet weak var reviewCollection: UICollectionView!
    @IBOutlet weak var chapterCollection: UICollectionView!
    
    //var
    var chapters = ["Chapter.png", "Chapter.png", "Chapter.png"]
    var reviews = ["review.png", "review.png", "review.png"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chapterCollection.delegate = self
        chapterCollection.dataSource = self
        
        reviewCollection.delegate = self
        reviewCollection.dataSource = self
        
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.chapterCollection {
            return chapters.count
        } else {
            return reviews.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.chapterCollection {
            let chapterCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChapterCell", for: indexPath) as! ChapterCell
            chapterCell.configureCell(bgImgName: chapters[indexPath.row])
            return chapterCell
        } else {
            let reviewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewCell", for: indexPath) as! ReviewCell
            reviewCell.configureCell(reviewImage: reviews[indexPath.row])
            return reviewCell
        }
    }
    
    
}

