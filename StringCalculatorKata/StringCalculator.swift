//
//  StringCalculator.swift
//  StringCalculatorKata
//
//  Created by Ian Wells on 22/11/2016.
//  Copyright © 2016 eleven:eleven software. All rights reserved.
//

import Foundation

class StringCalculator {
    
    func calculate(input: String) -> String {
        
        var result : String;
        
        if(input.isEmpty) {
            result = "0"
        } else {
            result = input
        }
        
        return result;
    }
    
}
