//
//  SimpleClacViewController.swift
//  Calculator
//
//  Created by Patryk Soliński on 25/07/2019.
//  Copyright © 2019 Patryk Soliński. All rights reserved.
//

import UIKit

class SimpleClacViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previusNumber:Double = 0
    var performingMath = false
    var operation = 0

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers0(_ sender: UIButton) {
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else if sender.tag == 19 {
            label.text = label.text! + String(".")
        } else {
            label.text = label.text! + String(sender.tag-1)
            
            numberOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func numbersC(_ sender: UIButton) {
        if label.text != " " && sender.tag != 11 && sender.tag != 18 {
            
            previusNumber = Double(label.text!)!
            
            if sender.tag == 14 { // divide
                label.text = "/"
            }
            else if sender.tag == 15 { // muliple
                label.text = "x"
            }
            else if sender.tag == 16 { // minus
                label.text = "-"
            }
            else if sender.tag == 17 { // plus
                label.text = "+"
            }
            else if sender.tag == 13 { // %
                label.text = "%"
            }
            operation = sender.tag
            performingMath = true
        }
        else if sender.tag == 18 {
            if operation == 14 {
                label.text = String(previusNumber / numberOnScreen)
            }
            if operation == 15 {
                label.text = String(previusNumber * numberOnScreen)
            }
            if operation == 16 {
                label.text = String(previusNumber - numberOnScreen)
            }
            if operation == 17 {
                label.text = String(previusNumber + numberOnScreen)
            }
            if operation == 13 {
                label.text = String((previusNumber - numberOnScreen) / previusNumber)
            }
        } else if sender.tag == 11 {
            label.text = " "
            previusNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
