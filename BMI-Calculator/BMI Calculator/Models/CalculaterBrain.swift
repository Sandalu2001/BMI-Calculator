//
//  CalculaterBrain.swift
//  BMI-Calculator
//
//  Created by Sandalu De Silva on 2023-01-10.
//
//

import Foundation
import UIKit

struct CalculaterBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(weight :Float ,height:Float){
        let bmiValue = weight / pow(height,2)
        
        let color = (underweight : #colorLiteral(red: 0.2310583889, green: 0.8482692242, blue: 0.9686999917, alpha: 1), healthy : #colorLiteral(red: 0.5310049653, green: 0.8726677299, blue: 0.3033735752, alpha: 1), overweight : #colorLiteral(red: 0.9406521916, green: 0.1203315184, blue: 0, alpha: 1))
        
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice: "Eat more pies !", color: color.underweight)
        }
        else if(bmiValue <= 24.5){
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle !", color: color.healthy)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies !", color: color.overweight)
        }
        
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "Blah Blah Blah"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.blue
    }
    
    
}
