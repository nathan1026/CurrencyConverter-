//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Nathan Bahl on 6/15/16.
//  Copyright © 2016 Nathan Bahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func convertCurrency(sender: UIButton) {
        if let amount = Double(inputTextField.text!){
            
            dollarAmount = amount
        }
        
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
        
    }
    
    @IBAction func clear(sender: UIButton) {
        inputTextField.text = ""
        if let amount = Double(inputTextField.text!){
            
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0

    }
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        inputTextField.delegate = self
        
        //Called when 'return' key is pressed
        func textFieldShouldReturn(textField: UITextField) -> Bool{
            
            textField.resignFirstResponder()
            return true
        }
    }
        
        //Called when user taps outside of keyboard
        override func touchesBegan(touches: Set<UITouch>, withEvent event:UIEvent?){
            
            view.endEditing(true)
        }
        
        
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

