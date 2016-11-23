//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Ian Wells on 22/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class StringCalculator {
    
    let minThreshold : Int = 0;
    let maxThreshold : Int = 1000;
    
    func calculate(input: String) throws -> Int {
        
        var result : Int = 0
        
        if(!input.isEmpty) {
            
            let numbersToProcess = splitInputByDelimiters(inputToProcess: input)
            
            for numberToProcess in numbersToProcess {
                
                var number = Int(numberToProcess)!
                
                if(number < minThreshold) {
                    throw StringCalcError.InvalidInputError
                }
                
                if(number > maxThreshold) {
                    number = 0;
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
