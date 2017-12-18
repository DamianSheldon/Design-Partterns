//
//  FontDialogDirector.swift
//  Behavioral
//
//  Created by Meiliang Dong on 18/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class FontDialogDirector: DialogDirector {
    open var listBox: ListBox!
    open var entryField: EntryField!
    
    open override func createWidgets() {
        listBox = ListBox(withDialogDirector: self)
        entryField = EntryField(withDialogDirector: self)
    }
    
    open override func widgetChanged(_ control: Control) {
        print("\(#function):\(control)")
        
        if control === listBox {
            print("Selection \(listBox.getSelection() ?? -1)")
        }
        else if control === entryField {
            print("text in entry field:\(entryField.text ?? "Empty Field")")
        }
        else {
            fatalError("This must never happend!")
        }
    }
}
