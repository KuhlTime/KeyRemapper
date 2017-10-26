//
//  AppDelegate.swift
//  KeyRemapper
//
//  Created by André Kuhlmann on 01.10.17.
//  Copyright © 2017 André Kuhlmann. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        // Remove TitleBar
        if let window = NSApplication.shared.windows.first {
            window.titlebarAppearsTransparent = true
            window.isMovableByWindowBackground = true
            window.titleVisibility = .hidden
        }
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

