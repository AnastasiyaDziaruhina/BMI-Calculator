//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Stacy on 4.05.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let formattedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return formattedBMI
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi!.color
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight / (height * height))
        
        let colorCollection =  [#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)]
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Истощение и скорая смерть, ешь больше сала", color: colorCollection[0])
            print("Маша Красотка девочка\(bmiValue)")
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Нормас все, продолжай в том же духе красотка", color: colorCollection[1])
        } else {
            bmi = BMI(value: bmiValue, advice: "Ну чет уже хватит тебе есть сало", color: colorCollection[2])
        }
        
    }
    
}

