//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Trey Eckenrod on 2/24/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewCOntroller: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipAmount : Float = 1.0
    var splitNumber : Float = 2
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        if sender == zeroPctButton {
            tipAmount = 1.0
        } else if sender == tenPctButton {
            tipAmount = 1.1
        } else {
            tipAmount = 1.2
        }
        
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Float(sender.value)
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calaculatePressed(_ sender: UIButton) {
        if let billTotal = Float(billTextField.text!) {
            print(billTotal * tipAmount / splitNumber)
        }
    }
}
