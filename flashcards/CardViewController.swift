//
//  CardViewController.swift
//  flashcards
//
//  Created by nhealy on 4/28/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    @IBOutlet weak var firstWordLabel: UILabel!
    
    var importedCardArray : [Card] = []
    var counter = 0
    var wordDisplayedFirst = true
    
    override func viewDidLoad() {
        
        if (wordDisplayedFirst)
        {
            firstWordLabel.text = importedCardArray[counter].cardWord
        }
        else
        {
            firstWordLabel.text = importedCardArray[counter].cardDefinition
        }
        
        
        super.viewDidLoad()
    }
}

