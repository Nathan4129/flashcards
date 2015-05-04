//
//  DefinitionViewController.swift
//  flashcards
//
//  Created by smorris on 5/1/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var wordDefinitionLabel: UILabel!
    var importedCardArray : [Card] = []
    var wantedDisplayValue = false
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(wantedDisplayValue)
        {
            wordDefinitionLabel.text = importedCardArray[counter].cardWord
        }
        else
        {
            wordDefinitionLabel.text = importedCardArray[counter].cardDefinition
        }
    }
    
    
    
}
