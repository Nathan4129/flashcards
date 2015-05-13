//
//  DeckListViewController.swift
//  flashcards
//
//  Created by nhealy on 5/12/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class DeckListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var decks = ["1", "2", "3", "4"]    // placeholder Array for Table View
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return decks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = decks[indexPath.row]

        return cell

    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            decks.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
