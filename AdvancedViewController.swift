//
//  AdvancedViewController.swift
//  Calculator
//
//  Created by Patryk Soliński on 22/08/2019.
//  Copyright © 2019 Patryk Soliński. All rights reserved.
//

import UIKit

class AdvancedViewController: UIViewController {
    
    @IBOutlet weak var funnyTextLabel: UILabel!
    
    var sinus:String = "We draw sinusoide..."
    var elements:String = "We create elements.."
    var uikit:String = "We building interface..."
    var equal:String = "We draw the equation..."
    let texts = ["We draw sinusoide...", "We create elements..", "We building interface...", "We draw the equation..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomText = texts.randomElement()!
        funnyTextLabel.text = randomText
        
    }

}
