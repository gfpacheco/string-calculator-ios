//
//  StringCalculatorBrain.swift
//  StringCalculator
//
//  Created by Guilherme Pacheco on 5/21/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

struct StringCalculatorBrain {

    func add(var string: String) -> Int {
        string = string.stringByReplacingOccurrencesOfString("\n", withString: ",")
        let partials = string.componentsSeparatedByString(",")
        let numbers = partials.map({ $0.toInt() ?? 0 })
        return numbers.reduce(0, combine: { (sum, number) -> Int in sum + number })
    }
    
}