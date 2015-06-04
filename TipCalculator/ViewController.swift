//
//  ViewController.swift
//  TipCalculator
//
//  Created by Salar Ali on 2015-06-04.
//  Copyright (c) 2015 BAY50. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var subtotalField: UITextField!
    
    @IBOutlet weak var taxText: UILabel!
    
    @IBOutlet weak var totalAmountText: UILabel!
    
    @IBOutlet weak var tipText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calculatePressed(sender: UIButton) {
        subtotalField.resignFirstResponder()
        var subtotalConvert = Double((subtotalField.text as NSString).doubleValue)
        var totalTax = subtotalConvert * 0.13
        var totalTip = subtotalConvert * 0.10
        tipText.hidden = false
        tipText.text = "\(totalTip)"
        taxText.hidden = false
        taxText.text = "\(totalTax)"
        totalAmountText.hidden = false
        totalAmountText.text = "$" + "\(totalTax + subtotalConvert + totalTip)"
        
    }


}

