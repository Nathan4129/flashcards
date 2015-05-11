//
//  CreateNewCardViewController.swift
//  flashcards
//
//  Created by smorris on 5/5/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class CreateNewCardViewController: UIViewController {
    
    var counter = 0
    var importedCardDeck = Deck()
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var wordDefinitionTextField: UITextField!
    @IBOutlet weak var wordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
   
    @IBAction func addCardButtonTapped(sender: AnyObject)
    {
        if wordDefinitionTextField.text != nil && wordDefinitionTextField.text != ""
        {
            if wordTextField.text != nil && wordTextField.text != ""
            {
                
                counter++
            }
        }
    }

}
