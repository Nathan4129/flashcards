//
//  Deck.swift
//  flashcards
//
//  Created by smorris on 5/4/15.
//  Copyright (c) 2015 Barrington High School. All rights reserved.
//

import UIKit

class Deck: NSObject
{
    var cardArray : [Card] = []
    var title = ""
    var subtitle = ""
    
    convenience init(title : String, subtitle : String)
    {
        self.init()
        self.title = title
        self.subtitle = subtitle
    }
    
}
