//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Ian Wells on 22/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class StringCalculator {
    
    func calculate(input: String) throws -> Int {
        
        var result : Int = 0
        
        if(!input.isEmpty) {
            
            let numbersToProcess = splitInputByDelimiters(inputToProcess: input)
            
            for numberToProcess in numbersToProcess {
                
                let number = Int(numberToProcess)!
                
                if(number < 0) {
                    throw StringCalcError.InvalidInputError
                }
                
                result += number
            }
        }
        
        return result;
    }
    
    func splitInputByDelimiters(inputToProcess: String) -> [String] {
        return inputToProcess.components(separatedBy: CharacterSet.init(charactersIn: ",\n"))
    }
    
}
