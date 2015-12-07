//
//  IdeaFormTableViewController.swift
//  MyIdeas
//
//  Created by Ronan Rodrigo Nunes on 05/12/15.
//  Copyright © 2015 Ronan Rodrigo Nunes. All rights reserved.
//

import UIKit

class IdeaFormTableViewController: UITableViewController {
    
    @IBOutlet weak var ideaTitle: UITextField!
    @IBOutlet weak var ideaDescription: UITextField!
    
    var idea: IdeaStruct!
    var saveIdeaUsecase: SaveIdeaUsecase!

    let sectionRows: [Int : Int] = [0 : 2, 1 : 1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.saveIdeaUsecase = SaveIdeaUsecaseFactory().make()
        self.idea = IdeaStruct()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionRows.keys.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionRows[section]!
    }


    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
    }

    @IBAction func doneTapped(sender: AnyObject) {
        idea.title = self.ideaTitle.text
        idea.description = self.ideaDescription.text
        
        self.saveIdeaUsecase.run(idea)
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
