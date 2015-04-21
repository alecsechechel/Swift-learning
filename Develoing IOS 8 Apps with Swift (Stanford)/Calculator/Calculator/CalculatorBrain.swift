//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Alex on 16.03.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private enum Op {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
    }
    
    private var opStack = [Op]()
    
    private var knowOps = [String:Op]()
    
    
    init() {
        knowOps["×"] = Op.BinaryOperation("×", *)
        knowOps["÷"] = Op.BinaryOperation("÷") { $1 * $0 }
        knowOps["+"] = Op.BinaryOperation("+", +)
        knowOps["−"] = Op.BinaryOperation("−") { $1 * $0 }
        knowOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
//    func evaluate(ops: [Op]) -> (result: Double?, ramainingOps: [Op]){
//    
//        return (nil, ops)
//    }
    
//    func evaluate() -> Double? {
//        
//    }
    
    func pushOperand(operand: Double) {
        opStack.append(Op.Operand(operand))
    }
    
    func performOperation(symbol: String) {
        if let operation = knowOps[symbol] {
            opStack.append(operation)
        }
        
    }
}
