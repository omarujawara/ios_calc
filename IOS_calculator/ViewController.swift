//
//  ViewController.swift
//  IOS_calculator
//
//  Created by Omaru Jawara on 6/30/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.placeholder = "Bill Amount..."
        billAmountTextField.backgroundColor = .secondarySystemBackground
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercenatge = [0.15,0.18,0.2]
        

        let bill = Double(billAmountTextField.text!)  ?? 0
        let tip = bill * tipPercenatge[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

