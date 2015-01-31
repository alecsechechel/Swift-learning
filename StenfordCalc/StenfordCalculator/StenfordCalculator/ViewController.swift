//
//  ViewController.swift
//  StenfordCalculator
//
//  Created by Alex on 30.01.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTypingANumber {
            display.text = display.text! + digit
            println("digit = \(digit)")
        } else {
            display.text = digit
            userIsInMiddleOfTypingANumber = true
        }
    }
}

