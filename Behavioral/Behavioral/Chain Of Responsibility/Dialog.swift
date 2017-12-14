//
//  Dialog.swift
//  Behavioral
//
//  Created by Meiliang Dong on 14/12/2017.
//  Copyright © 2017 Meiliang Dong. All rights reserved.
//

open class Dialog: Widget {
    open override func handleHelp() {
        if hasHelp() {
            print("Help about Dialog")
        }
        else {
            super.handleHelp()
        }
    }
}
