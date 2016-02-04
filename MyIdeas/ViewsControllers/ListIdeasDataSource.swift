//
//  ListIdeasDataSource.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 19/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import Foundation
import UIKit

class ListIdeasDataSource: UITableView, UITableViewDataSource {
    let ideas: [String] = ["x"]
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ideas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "ideaCell")
        
        cell.textLabel?.text = ideas[indexPath.row]
        
        return cell
    }
}