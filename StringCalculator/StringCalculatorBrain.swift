//
//  StringCalculatorBrain.swift
//  StringCalculator
//
//  Created by Guilherme Pacheco on 5/22/15.
//  Copyright (c) 2015 Guilherme Pacheco. All rights reserved.
//

import Foundation

class StringCalculatorBrain {

    func add(string: String) -> Int {
        let numbersAsStrings = string.componentsSeparatedByString(",")
        let number1 = numbersAsStrings[0].toInt() ?? 0
        if numbersAsStrings.count == 1 {
            return number1;
        } else {
            let number2 = numbersAsStrings[1].toInt() ?? 0
            return number1 + number2
        }
    }

}
