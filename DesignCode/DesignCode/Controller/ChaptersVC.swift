//
//  ChaptersVC.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/11/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class ChaptersVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // var
    var chapters = ["Chapter 1", "Chapter 2", "Chapter 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ChaptersVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterTableViewCell") as? ChapterTableViewCell {
            cell.configureCell(chapterNumber: indexPath.row + 1, numberOfSection: 12 + indexPath.row)
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

