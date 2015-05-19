//
//  DeckListViewController.swift
//  flashcards
//
//  Created by nhealy on 5/12/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class DeckListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var importedCardDeck : Deck = Deck()
    
    @IBOutlet weak var tableView: UITableView!
    
    //var decks : [Deck] = []  // placeholder Array for Table View
    var decks = [""]
    /*if importedCardDeck != nil
    {
        decks.append(importedCardDeck)
    }*/
    
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
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        var deck = decks[sourceIndexPath.row]
        decks.removeAtIndex(sourceIndexPath.row)
        decks.insert(deck, atIndex: destinationIndexPath.row)
    }
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    @IBAction func onTappedEditButton(sender: UIBarButtonItem) {
        if sender.tag == 0 {
            tableView.editing = true
            sender.tag = 1
        }
        else {
            tableView.editing = false
            sender.tag = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editButton.tag = 0
    }
}
