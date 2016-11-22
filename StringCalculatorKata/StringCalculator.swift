//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Ian Wells on 22/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class StringCalculator {
    
    func calculate(input: String) -> Int {
        
        var result : Int = 0
        
        if(!input.isEmpty) {
            
            let numbersToProcess = input.components(separatedBy: ",")
            
            for numberToProcess in numbersToProcess {
                result += Int(numberToProcess)!
            }
        }
        
        return result;
    }
    
}
