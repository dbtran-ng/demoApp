//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kute Nguyen on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
 
        // Calculate the tips and the total amount
        let tip = bill*tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        // Update the tips and the bill amount
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
    }
    
}

