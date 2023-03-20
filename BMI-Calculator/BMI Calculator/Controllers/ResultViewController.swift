//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Sandalu De Silva on 2023-01-09.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var color : UIColor?
    var advice : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
        view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //Go back to the previous view controller
        self.dismiss(animated: true)
    }
    

    

}
