//
//  ViewController.swift
//  CS193Calculator
//
//  Created by Connor Maher on 4/19/16.
//  Copyright © 2016 Connor Maher. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display.text!
        if userIsInTheMiddleOfTyping {
            display.text = textCurrentlyInDisplay + digit
        }
        else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
//        self.touchDigit(<#T##UIButton#>) first argument doesn't have to show it's name
//        print("touched \(digit) digit")
    }
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
             display.text = String(M_PI)
            }
        }
    }
}