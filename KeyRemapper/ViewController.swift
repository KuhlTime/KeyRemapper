//
//  ViewController.swift
//  KeyRemapper
//
//  Created by André Kuhlmann on 01.10.17.
//  Copyright © 2017 André Kuhlmann. All rights reserved.
//

import Cocoa

struct KeyManipulation {
    let fromKey: Key
    var toKey: Key
}

class ViewController: NSViewController {
    
    @IBOutlet weak var fromPopUpButton: NSPopUpButton!
    @IBOutlet weak var toPopUpButton: NSPopUpButton!
    @IBOutlet weak var activateButton: NSButton!
    @IBOutlet weak var tableView: NSTableView!
    
    
    var activeManipulations = [KeyManipulation]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsEmptySelection = false
        
        // Remove all Items
        fromPopUpButton.removeAllItems()
        toPopUpButton.removeAllItems()
        
        // Add All available Keys
        for key in Key.allValues {
            fromPopUpButton.addItem(withTitle: key.describingString)
            toPopUpButton.addItem(withTitle: key.describingString)
        }
    }
    
    
    // Activate Manipulation
    @IBAction func activateAction(_ sender: NSButton) {
        
        // Get values from PopUpButtons
        let fromIndex = fromPopUpButton.indexOfSelectedItem
        let toIndex = toPopUpButton.indexOfSelectedItem
        
        let fromKey = Key.allValues[fromIndex]
        let toKey = Key.allValues[toIndex]
        
        // Perform Key Change
        // TODO: Handle Failures
        guard changeKey(fromKey, toKey) else { return }
        
        
        
        /// Sets a new ActiveManipulation
        func setNewActiveManipulation() {
            
            guard fromKey != toKey else {
                print("Equivalent Keys - That makes no sence 😳")
                return
            }
    
            // Add valid Manipulation to the tableView
            let keyManipulation = KeyManipulation(fromKey: fromKey, toKey: toKey)
            
            // Add the new keyManipulation to the activeManipulations array
            activeManipulations += [keyManipulation]
        }
        
        // At first there is now value that can ae updated or deleted
        if activeManipulations.count == 0 {
            setNewActiveManipulation()
        } else {
            var changed = false
            for (index, activeManipulation) in activeManipulations.enumerated() {
                if activeManipulation.fromKey == fromKey {
                    // Something will diffently change, disaale the creation of a new activeMutation
                    changed = true
                    if activeManipulation.fromKey == toKey {
                        print("remove")
                        // Delete the activeManipulation, because the value returned to its default
                        activeManipulations.remove(at: index)
                    } else {
                        print("update")
                        // The toKey has changed
                        activeManipulations[index].toKey = toKey
                    }
                }
            }
            
            // when there has been no change, create a new activeMutation
            if !changed {
                setNewActiveManipulation()
            }
        }
        
        // Update the data inside the tableView
        tableView.reloadData()
        
    }
    

    // Hand of to ObjC function
    func changeKey(_ fromKey: Key, _ toKey: Key) -> Bool {
        let result = manipulateKey(fromKey.keyCode, toKey.keyCode)
        if result == 0 {
            return true
        } else {
            return false
        }
    }
    
    /// Reset the provided Key.
    func resetKey(_ key: Key) -> Bool {
        let result = manipulateKey(key.keyCode, key.keyCode)
        if result == 0 {
            return true
        } else {
            return false
        }
    }
    
    /// Resets all Keys.
    func resetAll() {
        for key in Key.allValues {
            _ = resetKey(key)
        }
    }
    
}


extension ViewController: NSTableViewDelegate {
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        // Check if there is a manipulation available at the given row (index)
        let manipulation = activeManipulations[row]
        let fromKey = manipulation.fromKey
        let toKey = manipulation.toKey
        
        let cellIdentifier = NSUserInterfaceItemIdentifier.init("Cell")
        
        let cell = tableView.makeView(withIdentifier: cellIdentifier, owner: self) as? NSTableCellView
        let text = fromKey.describingString + " ▶ " + toKey.describingString
        
        cell?.textField?.stringValue = text
        
        return cell
    }
    
}

extension ViewController: NSTableViewDataSource {
    
    // Return the value of activeKeyManipulation
    // If the array is empty just set the numberOfRows to 0
    func numberOfRows(in tableView: NSTableView) -> Int {
        return activeManipulations.count
    }
    
}


