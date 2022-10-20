//
//  File.swift
//  15Hafta
//
//  Created by Sümeyye Kılıçoğlu on 20.10.2022.
//

import Foundation
class Math {
    static let shared = Math()
   
     func sum(number1: Int, number2: Int) -> Int{
         
         return number1 + number2
     }
    
    
    func multiply(number1: Int, number2: Int) -> Int{
        
        return number1 * number2
    }
    
    
    func divide(number1: Int, number2: Int) -> Int {
        
        return number1 / number2
        
    }
    
    
    func minus(number1: Int, number2: Int) -> Int {
        
        return number1 - number2
        
    }

    
}
