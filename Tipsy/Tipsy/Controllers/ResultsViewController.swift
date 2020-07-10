//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Kyle Knudson on 7/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total : Double?
    var numOfPeople : Int?
    var tipPercentage : Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tipPercentage2 = (tipPercentage ?? 0.0) * 100
        
        totalLabel.text = String(total ?? 0.0)
        settingsLabel.text = "Split Between \(numOfPeople ?? 2) People, with \(String(format: "%.0f",tipPercentage2))% Tip"
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
