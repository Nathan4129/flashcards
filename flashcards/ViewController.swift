//
//  ViewController.swift
//  flashcards
//
//  Created by nhealy on 4/28/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var importedCardDeck = Deck()
    
    @IBAction func toDeckListButtonOnTapped(sender: AnyObject) {
         func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            var dvc = segue.destinationViewController as! DeckListViewController
            
            dvc.decks.append(importedCardDeck)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}