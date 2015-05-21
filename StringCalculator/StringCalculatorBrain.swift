//
//  StringCalculatorBrain.swift
//  StringCalculator
//
//  Created by Guilherme Pacheco on 5/21/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

struct StringCalculatorBrain {

    func add(var string: String) -> Int {
        let delimiter: String

        if string.hasPrefix("//") {
            let stringParts = string.componentsSeparatedByString("\n")
            let delimiterPart = stringParts[0]
            delimiter = delimiterPart.substringFromIndex(advance(delimiterPart.startIndex, 2))
            string = stringParts[1]
        } else {
            string = string.stringByReplacingOccurrencesOfString("\n", withString: ",")
            delimiter = ","
        }

        let numbersAsStrings = string.componentsSeparatedByString(delimiter)
        let numbers = numbersAsStrings.map({ $0.toInt() ?? 0 })
        return numbers.reduce(0, combine: { (sum, number) -> Int in sum + number })
    }
    
}