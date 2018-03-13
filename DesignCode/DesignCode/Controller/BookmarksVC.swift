//
//  BookmarksVC.swift
//  DesignCode
//
//  Created by Soufiane Salouf on 3/11/18.
//  Copyright © 2018 Soufiane Salouf. All rights reserved.
//

import UIKit

class BookmarksVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //var
    var bookmarks = [Bookmark]()

    override func viewDidLoad() {
        super.viewDidLoad()
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "LEARN IOS 11 DESIGN", sectionTitle: "Deference", bookmarkDescription: "Knowning how to use Stroyboard and Auto Layout and a little bit of Swift ..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "INTRODUCTION TO XCODE'S LAYOUT", sectionTitle: "Create your first Xcode Project", bookmarkDescription: "new version of xcode, improving the tools and making available..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "BUILD A SWIFT APP", sectionTitle: "Deference", bookmarkDescription: "Knowning how to use Stroyboard and Auto Layout and a little bit of Swift ..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "INTRODUCTION TO XCODE'S LAYOUT", sectionTitle: "Create your first Xcode Project", bookmarkDescription: "new version of xcode, improving the tools and making available..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "build A SWIFT APP", sectionTitle: "Deference", bookmarkDescription: "Knowning how to use Stroyboard and Auto Layout and a little bit of Swift ..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "INTRODUCTION TO XCODE'S LAYOUT", sectionTitle: "Create your first Xcode Project", bookmarkDescription: "new version of xcode, improving the tools and making available..."))
        bookmarks.append(Bookmark(bookmarkImageName: "Logo.png", chapterTitle: "LEARN IOS 11 DESIGN", sectionTitle: "Deference", bookmarkDescription: "Knowning how to use Stroyboard and Auto Layout and a little bit of Swift ..."))
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension BookmarksVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BookmarkTableViewCell") as? BookmarkTableViewCell {
            cell.configureCell(bookmark: bookmarks[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
}
