//
//  ListIdeasViewController.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 19/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class ListIdeasViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = ListIdeasDataSource()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ideaCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
