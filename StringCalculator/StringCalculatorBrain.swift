//
//  StringCalculatorBrain.swift
//  StringCalculator
//
//  Created by Guilherme Pacheco on 5/22/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

import Foundation

class StringCalculatorBrain {

    func add(var string: String) -> Int {
        string = string.stringByReplacingOccurrencesOfString("\n", withString: ",")
        let numbersAsStrings = string.componentsSeparatedByString(",")
        let numbers = numbersAsStrings.map({ $0.toInt() ?? 0 })
        return numbers.reduce(0, combine: { $0 + $1 })
    }

}
