//
//  EntryField.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class EntryField: Control {
    open var text: String?
    
    func recieved(text: String) -> Void {
        self.text = text
        
        change()
    }
}
