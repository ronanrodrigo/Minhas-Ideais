//
//  IdeasTableViewController.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class IdeasListTableViewController: UITableViewController {
    
    var ideas: [IdeaStruct]!
    var listIdeasUsecase: ListIdeasUsecase!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.listIdeasUsecase = ListIdeasUsecaseFactory().make()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
   
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ideas.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "IdeaCell")
        
        cell.textLabel?.text = ideas[indexPath.row].title
        
        return cell
    }


    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
    }

}
