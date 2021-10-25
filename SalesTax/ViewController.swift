//
//  ViewController.swift
//  SalesTax
//
//  Created by Kunal Gharate on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var beforeTextPrice:Float = 0;
    var saleTaxRate:Float = 0;
    @IBOutlet weak var afterTextPriceTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func beforeTextPriceChanged(_ sender: UITextField) {
        if let value = Float(sender.text!)
        {
            beforeTextPrice = value
        }
        else
        {
            beforeTextPrice = 0
        }
        
    }
    
    
    @IBAction func saleTaxRateChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!)
        {
            saleTaxRate = value
        }
        else
        {
            saleTaxRate = 0
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        
        let salestax = beforeTextPrice *
        saleTaxRate / 100
        
        
    let afterTaxPrice = beforeTextPrice + salestax
        
        afterTextPriceTextField.text = String(afterTaxPrice)
    }
}

