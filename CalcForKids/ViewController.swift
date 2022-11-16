//
//  ViewController.swift
//  CalcForKids
//
//  Created by Karen Vardanian on 16.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen: Int = 0
    var firstNumber:Int = 0
    var operation: Int = 0
    var sing:Bool = false
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if resultLabel.text != "" &&  sender.tag != 10 && sender.tag != 15 {
            firstNumber = Int(resultLabel.text!)!
            if sender.tag == 11 { //divide
                resultLabel.text = "/"
            } else if sender.tag == 12 { // multiply
                resultLabel.text = "X"
                
            } else if sender.tag == 13 { // minus
                resultLabel.text = "-"
                
            } else if sender.tag == 14 { // plus
                resultLabel.text = "+"
            } else if sender.tag == 10 {
                resultLabel.text = "0"
            }
            operation = sender.tag
            sing = true
            
        } else if sender.tag == 15 { //equals
            if operation == 11 {
                resultLabel.text = String(firstNumber / numberFromScreen)
            } else if operation == 12 {
                resultLabel.text = String(firstNumber * numberFromScreen)
            } else if operation == 13 {
                resultLabel.text = String(firstNumber - numberFromScreen)
            } else if operation == 14 {
                resultLabel.text = String(firstNumber + numberFromScreen)
            }
            
            
        } else if sender.tag == 10 {
            resultLabel.text = ""
            firstNumber = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    @IBAction func digits(_ sender: UIButton) {
        if sing == true {
            resultLabel.text = String(sender.tag)
            sing = false
        } else {
            resultLabel.text = String(resultLabel.text!) + String(sender.tag)
        }
        numberFromScreen = Int(resultLabel.text!)!
    }
    
    
}


