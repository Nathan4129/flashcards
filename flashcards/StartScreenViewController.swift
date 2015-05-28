//
//  StartScreenViewController.swift
//  flashcards
//
//  Created by nhealy on 5/19/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    @IBOutlet weak var numberOfCardsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var importedCardDeck : Deck = Deck()
    var importedNumber = 0
    
    override func viewDidLoad() {
        titleLabel.text = "You picked \(importedCardDeck.title)"
        numberOfCardsLabel.text = "There are \(importedNumber) cards in this deck"
        
        super.viewDidLoad()
    }
}
