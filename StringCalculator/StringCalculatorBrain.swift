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
        var delimiter: String

        if string.hasPrefix("//") {
            let stringParts = string.componentsSeparatedByString("\n")
            let delimiterPart = stringParts[0]
            delimiter = delimiterPart.substringFromIndex(advance(delimiterPart.startIndex, 2))
            string = stringParts[1]
        } else {
            delimiter = ","
            string = string.stringByReplacingOccurrencesOfString("\n", withString: ",")
        }

        let numbersAsStrings = string.componentsSeparatedByString(delimiter)
        let numbers = numbersAsStrings.map({ $0.toInt() ?? 0 })
        return numbers.reduce(0, combine: { $0 + $1 })
    }

}
