//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var splitValue = 0.0
    var billValue = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        billTextField.endEditing(true)
        
        sender.isSelected = true
        
        //Get the current title of the button that was pressed.
         let buttonTitle = sender.currentTitle!
         
         //Remove the last character (%) from the title then turn it back into a String.
         let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
         
         //Turn the String into a Double.
         let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
         
         //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
         tip = buttonTitleAsANumber / 100
         tip = 1 + tip
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = Int(sender.value).description
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billValue = Double(billTextField.text ?? "0.0" ) ?? 0.0
        splitValue = (billValue * tip) / Double(splitNumberLabel.text ?? "1.0")!
        splitValue = (splitValue*100).rounded()/100
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
        //       Downcasting using the keyward as, ! means that it is forced
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.total = splitValue
            destinationVC.numOfPeople = Int(splitNumberLabel.text ?? "1")!
            destinationVC.tipPercentage = (tip - 1)
        }
    }
}

