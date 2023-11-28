//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        if Crashes.hasCrashedInLastSession {
            let alertController = UIAlertController(title: "Oops", message: "Sorry about that, an error occured", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "It's cool", style: .default))
            self.present(alertController, animated: true)
        }

        Analytics.trackEvent("navigate_to_calculator")
    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
        // Crashes.generateTestCrash()

        let current_age = Int(ageTextField.text ?? "0")
        let planned_retirement_age = Int(retirementAgeTextField.text ?? "0")

        let properties = ["current_age": String(current_age ?? 0),
                          "planned_retirement_age": String(planned_retirement_age ?? 0)]

        Analytics.trackEvent("calculate_retirement_amount", withProperties: properties)
    }
    
}

