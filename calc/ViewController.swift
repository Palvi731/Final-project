//
//  ViewController.swift
//  calc
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   /*

    let PLUS = 10
    let MINUS = 11
    let MULTIPLY = 12
    let DIVIDE = 13
    var flag = false
    
    
    @IBOutlet weak var label: UILabel!
    var num1 : Double = 0
    var num2 : Double = 0
    var operand : NSInteger = 0
    var answer : Double = 0.0
    var theNumber : String = "0"
    
    
    @IBAction func setop(Sender:UIButton){
        
        if Sender.tag >= 10 && Sender.tag <= 13 {
        
        operand = Sender.tag
            
         saveNum1()
        }

        if Sender.tag == -2{
            theNumber = "0"
            printnum()
        }
    }
    

    func saveNum1(){
        
        num1 = Double(theNumber)!
        theNumber = "0"
        printnum()
    }
    

    
    @IBAction func calculate(Sender:UIButton){
        
        flag = true
        num2 = Double(theNumber)!
        print("num2 \(num2)")
        
        if operand == PLUS{
            answer = Double(num1 + num2)
        }
        
        if operand == MINUS{
            
            answer = Double(num1 - num2)
        }
 
        if operand == MULTIPLY{
            answer = Double(num1 * num2)
        }
    
        if operand == DIVIDE{
            
            answer = Double(num1 / num2)
        }
        
       
        num1 = 0
        num2 = 0
        operand = PLUS
        theNumber = String(answer)
        printnum()

        if flag == true  {
            
         
            
        }
            
        else{
        answer = 0.0
        }
        
        
        theNumber = "0"
       
        
    
        
    }

    

    //sets number
    func printnum(){
        
        label.text = theNumber
        
    }

    //gets from users and sets to number
    @IBAction func pressnum(Sender:UIButton){
        
        if Sender.tag >= 0 && Sender.tag <= 9 {
            
            print("num1 \(Sender.tag) ")
           
            theNumber += String(Sender.tag)
            
            printnum()
        }
        
    }
    
   

    @IBAction func dot(_ sender: Any) {
        
        if theNumber.contains(".") {
            
            
            
        }
        else{
            
        theNumber += "."
        
        printnum()
        
        }
        
    }
    
 
    @IBAction func percent(_ sender: Any) {
        
    
        var number = label.text
    
        var number2 = Double(number!)!
    
        var pecent = number2 / 100
        
        label.text = String(pecent)
        
        
        
    }
    
    
    */
   
    
    
    
  var theNumber : String = "0"
    
    
  @IBOutlet weak var label: UILabel!
    
  @IBAction func createString(Sender:UIButton){
    
    
    if Sender.tag >= 0 && Sender.tag <= 9 {
   
        print("num1 \(Sender.tag) ")
             
         theNumber += String(Sender.tag)
    
         printnum()
    
             
          }
   
    
    else if Sender.tag == 10  && label.text?.last != "+" && label.text?.last != "-" && label.text?.last != "*" && label.text?.last != "/"  {
        
        label.text = ""
        
        label.text = "+"
         theNumber += "+"
           // label.text = ""
              //  printnum()
    }
    
    
    else if Sender.tag == 11 && label.text?.last != "+" && label.text?.last != "-" && label.text?.last != "*" && label.text?.last != "/"  {
        
        label.text = ""
        
        label.text = "-"
          theNumber += "-"
            
                // printnum()
     }
    
    
    else if Sender.tag == 12 && label.text?.last != "+" && label.text?.last != "-" && label.text?.last != "*" && label.text?.last != "/"  {
        
        label.text = ""
        
        label.text = "*"
          theNumber += "*"
            
                 //printnum()
     }
    
    
    else if Sender.tag == 13 && label.text?.last != "+" && label.text?.last != "-" && label.text?.last != "*" && label.text?.last != "/" {
        
        label.text = ""
        
          label.text = "/"
          theNumber += "/"
            
                 //printnum()
     }
    

    
    }
    
    
    
    @IBAction func Result(_ sender: Any) {
    
   
        if theNumber.last == "+" || theNumber.last  == "-" || theNumber.last == "*"  || theNumber.last  == "/" {
            return
        
        }
        print(theNumber)
        let stringWithMathematicalOperation: String = theNumber // Example
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
        let result: Double = exp.expressionValue(with: nil, context: nil) as! Double // 25.0
        theNumber = String(result)
        
        printnum()
        
        theNumber = ""
        
    
    }
    
    
    @IBOutlet var roundedbutton: [UIButton]!
    
    
    
    @IBAction func clear(_ sender: Any) {
    
        theNumber = "0"
        printnum()
    
    }
    
    
    
    
    func printnum(){
        
        label.text = theNumber
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<roundedbutton.count{
            roundedbutton[i].layer.cornerRadius = 15.0
        }
        
    }
}


