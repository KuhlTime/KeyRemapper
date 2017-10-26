//
//  KeyView.swift
//  KeyRemapper
//
//  Created by André Kuhlmann on 26.10.17.
//  Copyright © 2017 André Kuhlmann. All rights reserved.
//

import Cocoa

class KeyView: NSView {
    
    @IBOutlet weak var imageView: NSImageView!
    @IBOutlet weak var label: NSTextField!
    
    
    func setKey(label: String) {
        self.label.stringValue = label
    }
    
}
