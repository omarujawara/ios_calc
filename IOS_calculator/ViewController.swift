//
//  ViewController.swift
//  IOS_calculator
//
//  Created by Omaru Jawara on 6/30/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "TIPP"
        sliderValue.value = 15
        sliderValueLabel.text! = String(Int(sliderValue.value)) + "%"
        billAmountTextField.placeholder = "Bill Amount..."
        billAmountTextField.backgroundColor = .secondarySystemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        billAmountTextField.becomeFirstResponder()
    }
    
    
    @IBAction func textEdit(_ sender: UITextField) {
        calculate()
    }
    @IBAction func sliderValue(_ sender: UISlider) {
        calculate()
    }
    
    func calculate(){
        let bill = Float(billAmountTextField.text!)  ?? 0
        sliderValueLabel.text! = String(Int(sliderValue.value)) + "%"
        let tip = (Float(billAmountTextField.text!)  ?? 0) * (sliderValue.value/100)
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        let total = bill + tip
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

