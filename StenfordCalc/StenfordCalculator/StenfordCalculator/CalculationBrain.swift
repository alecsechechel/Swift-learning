//
//  File.swift
//  StenfordCalculator
//
//  Created by Alex on 01.02.15.
//  Copyright (c) 2015 Oleksii. All rights reserved.
//

import Foundation

class CalculationBrain {
    
    enum Op: Printable {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
        
        var description: String {
            get {
                switch self {
                    case .Operand(let operand):
                        return "\(operand)"
                    case .UnaryOperation(let symbol, _):
                        return symbol
                    case .BinaryOperation(let symbol, _):
                        return symbol
                }
            }
        }
    }
    
    private var opStack  = [Op]()
    private var knownOps = [String: Op]()
    
    init() {
        func learnOp(op: Op) {
            knownOps[op.description] = op
        }
        learnOp(Op.BinaryOperation("×", *))
        knownOps["÷"] = Op.BinaryOperation("÷") { $0 / $1 }
        knownOps["+"] = Op.BinaryOperation("+", +)
        knownOps["×"] = Op.BinaryOperation("×") { $0 - $1 }
        knownOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
    private func evalute(ops: [Op]) -> (result: Double?, remainingOps: [Op]) {
        
        if !ops.isEmpty {
            var remainingOps = ops
            let op = remainingOps.removeLast()
            switch op {
                case .Operand(let operand):
                    return (operand, remainingOps)
                case .UnaryOperation(_, let operation):
                    let operandEvaluation = evalute(remainingOps)
                    if let operand = operandEvaluation.result {
                        return (operation(operand), operandEvaluation.remainingOps)
                    }
                case .BinaryOperation(_, let operation):
                    let op1Evaluation = evalute(remainingOps)
                    if let operand1 = op1Evaluation.result {
                        let op2Evalution = evalute(op1Evaluation.remainingOps)
                        if let operand2 = op2Evalution.result {
                            return (operation(operand1, operand2), op2Evalution.remainingOps)
                        }
                    }

            }
            
        }
        return (nil, ops)
    }
    
    func evalute() -> Double? {
        
        let (result, remainder) = evalute(opStack)
        println("\(opStack) = \(result) with \(remainder) left over")
        return result
    }
    
    func pushOperand(operand: Double) -> Double? {
        
        opStack.append(Op.Operand(operand))
        return evalute()
    }
    
    func performOperation(symbol: String) ->Double? {
        
        if let operation = knownOps[symbol] {
            opStack.append(operation)
        }
        return evalute()
    }
}