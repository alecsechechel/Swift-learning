//
//  ViewController.swift
//  Calculator
//
//  Created by Alex on 11.03.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userIsInThoMiddleOfTypingANumber = false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInThoMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInThoMiddleOfTypingANumber = true
        }
        
        println("digit = \(sender.currentTitle)")
    }
}

