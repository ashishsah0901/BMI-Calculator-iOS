//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ashish Sah on 03/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var suggestionLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        suggestionLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
