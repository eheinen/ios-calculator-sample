//
//  ViewController.swift
//  Calculator_Sample
//
//  Created by Eduardo Heinen on 4/12/16.
//  Copyright © 2016 Eduardo Heinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber_1: UITextField!
    @IBOutlet weak var inputNumber_2: UITextField!
    @IBOutlet weak var inputAnswer: UITextField!
    @IBOutlet weak var message: UILabel!
    
    var result = Float()
    var num1 = Float()
    var num2 = Float()
    var currentOperation = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getNum1() -> Float {
        if self.inputNumber_1.text! == "" {
            self.message.text = "Please, enter a valid number!"
            self.message.hidden = false
            return 0
        } else {
            return NSNumberFormatter().numberFromString(self.inputNumber_1.text!)!.floatValue
        }
    }
    
    func getNum2() -> Float {
        if self.inputNumber_2.text! == "" {
            self.message.text = "Please, enter a valid number!"
            self.message.hidden = false
            return 0
        } else {
            return NSNumberFormatter().numberFromString(self.inputNumber_2.text!)!.floatValue
        }
    }
    
    func setAnswer(value: String) {
        self.message.hidden = true
        self.inputAnswer.text = value
    }
    
    @IBAction func sum(sender: UIButton) {
        setAnswer(String(getNum1() + getNum2()))
    }
    
    @IBAction func minus(sender: UIButton) {
        setAnswer(String(getNum1() - getNum2()))
    }
    
    @IBAction func multiply(sender: UIButton) {
        setAnswer(String(getNum1() * getNum2()))
    }
    
    @IBAction func divide(sender: UIButton) {
        if getNum2() <= 0 {
            self.message.text = "You cannot divide by zero!"
            self.message.hidden = false
        }
        else {
            setAnswer(String(getNum1() / getNum2()))
        }
    }
    

}

