//
//  StringCalculatorBrain.swift
//  StringCalculator
//
//  Created by Guilherme Pacheco on 5/21/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

struct StringCalculatorBrain {

    func add(string: String) -> Int {
        let partials = string.componentsSeparatedByString(",")
        let number1 = partials[0].toInt() ?? 0
        
        if partials.count == 1 {
            return number1
        } else {
            let number2 = partials[1].toInt() ?? 0
            return number1 + number2
        }
    }

}