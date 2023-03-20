//
//  ViewController.swift
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculaterBrain = CalculaterBrain()
    

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func HeightsliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f",sender.value)
        
        heightValue.text = "\(height) m"
        
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        //print(Int(sender.value))
        
        let weight = Int(sender.value)
        weightValue.text = "\(weight) kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculaterBrain.calculateBMI(weight: weight, height: height)
        //bmiValue = String(format: "%.1f", BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //There can be more than one segue so we have to select the correct segue
        if segue.identifier == "goToResult" {
            
            //inizialize the viewController that we want
            //segue.destination has a data type of UIViewController
            //So in order to narrow it down to say that the segue destination is accually a resultViewController we can you 'as'
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculaterBrain.getBMIValue()
            destinationVC.advice = calculaterBrain.getAdvice()
            destinationVC.color = calculaterBrain.getColor()
        }
    }
    
    
}

