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
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if userIsInThoMiddleOfTypingANumber {
            enter()
        }
        switch operation {
        case "×": performOperation { $0 * $1 }
        case "÷": performOperation { $1 / $0 }
        case "+": performOperation { $0 + $1 }
        case "−": performOperation { $1 - $0 }
        case "√": performOperation { sqrt($0)}
        default: break
        }
    }
    
    func performOperation(operation: (Double, Double) -> Double) {
        if operandStack.count >= 2 {
            displayValue = operation (operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }
    func performOperation(operation: Double -> Double) {
        if operandStack.count >= 1 {
            displayValue = operation (operandStack.removeLast())
            enter()
        }
    }
    
    var operandStack = Array<Double>()
    @IBAction func enter() {
        userIsInThoMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        println("operand steck = \(operandStack)")
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInThoMiddleOfTypingANumber = false
        }
    }
}

