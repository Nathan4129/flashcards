//
//  CreateNewDeckViewController.swift
//  flashcards
//
//  Created by smorris on 5/4/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class CreateNewDeckViewController: UIViewController {
    @IBOutlet weak var deckTitleTextField: UITextField!
    @IBOutlet weak var deckSubtitleTextField: UITextField!
    @IBOutlet weak var numberOfCardsTextField: UITextField!
    
    
    var madeDeck : Deck
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onTappedMakeDeckButton(sender: AnyObject)
    {
        var newDeck = Deck(title: deckTitleTextField.text, subtitle: deckSubtitleTextField.text, numberOfCards : numberOfCardsTextField.text.toInt()!)
        madeDeck = newDeck
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dvc = segue.destinationViewController as! CreateNewCardViewController
        dvc.importedCardDeck = madeDeck
    }
}
