//
//  ViewController.swift
//  Calculator
//
//  Created by user190373 on 2/19/21.
//

import UIKit

class ViewController: UIViewController {

  var actual = "0"
    var operation = ""
    var resultS = false
    
    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //add every operation in one function
    func calculate(x: Double, y: Double, Operation: String)-> Double {
            switch Operation {
            case "-":
                return x - y
                
            case "+":
                return x + y
                
            case "X":
                return x * y
                
            case "/":
                return x / y
                
            default:
                return y
            }
        }
    //implementation of the calculator's full reset button
    @IBAction func erase(_ sender: UIButton) {
            DisplayLabel.text = "0"
            actual = "0"
            resultS = true
            operation = ""
           }
    
    @IBAction func processNumber(_ sender: UIButton) {
               if let numberText = sender.titleLabel?.text {
                
                   if !resultS {
                    
                       if (DisplayLabel.text == "0") {
                        
                        DisplayLabel.text = numberText
                        
                       } else {
                        DisplayLabel.text = DisplayLabel.text! + numberText
                       }
                   } else {
                       DisplayLabel.text = numberText
                       resultS = false
                   }
                   
               }
           }
   
    
    
    //reset the new x and y value for the calculator to keep doing long operations
    @IBAction func resetValues(_ sender: UIButton) {
           let x = Double(actual)
           let y = Double(DisplayLabel.text!)
            let result = calculate(x: x!, y: y!, Operation: operation)
            DisplayLabel.text = String(result)
            actual = "0"
            resultS = true
            operation = ""
       }
 
    //implementation of the operation buttons
       @IBAction func processOperation(_ sender: UIButton) {
           if let operationText = sender.titleLabel?.text {
            
               if operation.isEmpty {
                
                operation = operationText
                actual = DisplayLabel.text ?? "0"
                resultS = true
                   
               } else {
                
                   let x = Double(actual)
                   let y = Double(DisplayLabel.text!)
                
                let result = calculate(x: x!, y: y!, Operation: operation)
            
                actual = String(result)
                DisplayLabel.text = String(result)
                operation = operationText
                resultS = true
                
               }
           }
       }
       
    
    
   
}
    



