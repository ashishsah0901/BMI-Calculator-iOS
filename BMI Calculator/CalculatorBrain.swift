//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ashish Sah on 03/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmi = weight / (height * height)
        
        if bmi < 18.5 {
            bmiValue = BMI(bmiValue: bmi, advice: "Eat more pies!", backgroundColor: UIColor.blue)
        } else if bmi < 24.9 {
            bmiValue = BMI(bmiValue: bmi, advice: "Fit as fiddle!", backgroundColor: UIColor.green)
        } else {
            bmiValue = BMI(bmiValue: bmi, advice: "Eat less pies!", backgroundColor: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.bmiValue ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getBackgroundColor() -> UIColor {
        return bmiValue?.backgroundColor ?? UIColor.white
    }
}
