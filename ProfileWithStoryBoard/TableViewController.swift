//
//  TableViewController.swift
//  ProfileWithStoryBoard
//
//  Created by Maimaitiming Abudukadier on 2/15/15.
//  Copyright (c) 2015 Maimaitiming Abudukadier. All rights reserved.
//

import UIKit
protocol TableViewForProfileDelegate {
    func tableviewDidScroll (offSetY:CGFloat)
}

class TableViewController: UITableViewController {

    var delegate:TableViewForProfileDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.contentInset = UIEdgeInsetsMake(CGRectGetWidth(self.tableView.frame)*0.6, 0, 0, 0)
    }
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        self.delegate?.tableviewDidScroll(scrollView.contentOffset.y)
    }

}
