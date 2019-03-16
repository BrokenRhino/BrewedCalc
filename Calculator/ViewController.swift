//
//  ViewController.swift
//  Calculator
//
//  Created by Ryan Cummins on 3/15/19.
//  Copyright © 2019 Ryan Cummins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Variables
    
    @IBOutlet weak var resultLabel: UILabel!
    var finishedNumber : Double = 0
    var workingNumber : String = ""
    var numberPressed : Int = 0
    var storedNumber : String = ""
    
    //MARK: Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clear()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch (sender.tag - 1) {
        case 0..<10 :
            print(sender.tag - 1)
            numberPressed = (sender.tag - 1)
            displayNumber()
        case 10 :
            print("C")
            clear()
        case 11 :
            print("+/-")
        case 12 :
            print("%")
        case 13 :
            print("/")
        case 14 :
            print("*")
        case 15 :
            print("-")
            minus()
        case 16 :
            print("+")
            plus()
        case 17 :
            print("=")
            equals()
        case 18 :
            print(".")
        default:
            return
        }
        
    }
    
    func plus() {
        
        storedNumber = workingNumber
        clear()
        
    }
    
    
    func minus() {
        
        storedNumber = String(0.0 - Double(workingNumber)!)
        clear()
        
    }
    
    
    func updateDisplay(_ text : String?) {
        if (text != nil) {
            resultLabel.text = text
        } else {
            return
        }
    }
    
    
    func equals() {
        
        finishedNumber = (Double(storedNumber)! + Double(workingNumber)!)
        print(finishedNumber)
        updateDisplay(String(finishedNumber))
        
    }
    
    
    func displayNumber() {
        
        if workingNumber == "0" {
            workingNumber = String(numberPressed)
            resultLabel.text = workingNumber
        } else {
            workingNumber = workingNumber + String(numberPressed)
            print(workingNumber)
            resultLabel.text = workingNumber
        }
        
    }
    
    
    func clear() {
        workingNumber = "0"
        resultLabel.text = workingNumber
        
    }
    
}

