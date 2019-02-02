//
//  ViewController.swift
//  TipCalculator
//
//  Created by Ravi Patel on 2/2/19.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet weak var tip_label: UILabel!
    @IBOutlet weak var bill_field: UITextField!
    @IBOutlet weak var segment_controller: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello...")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(bill_field.text!) ?? 0
        
        // calculate the tip and total
        let tipPercentages = [0.1, 0.18, 0.2]
        let tip = bill * tipPercentages[segment_controller.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip and total labels
        tip_label.text = String(format: "$%.2f", tip)
        total_label.text = String(format: "$%.2f", total)
    }
    
}

