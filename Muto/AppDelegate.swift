//
//  AppDelegate.swift
//  Muto
//
//  Created by Kane Hsieh on 7/12/16.
//  Copyright © 2016 Kane Hsieh. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    // using http://footle.org/WeatherBar/

    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    
    // quits
    
    @IBAction func quitClicked(sender: AnyObject) {
        NSApplication.sharedApplication().terminate(self)
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        // Hello World
        
        statusItem.title = "Muto"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

