//
//  StatusMenuController.swift
//  Muto
//
//  Created by Kane Hsieh on 7/13/16.
//  Copyright © 2016 Kane Hsieh. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        // Insert code here to initialize your application
        // Hello World
        
        let icon = NSImage(named: "statusIcon")
        icon?.template = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    @IBAction func quitClicked(sender: NSMenuItem) {
        // quits
        
        NSApplication.sharedApplication().terminate(self)
    }


}
