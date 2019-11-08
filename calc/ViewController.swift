//
//  ViewController.swift
//  calc
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
        if theNumber.contains("=== 1"){
            return
        }
        
        
        if theNumber.last == "+" || theNumber.last  == "-" || theNumber.last == "*"  || theNumber.last  == "/" {
            return
        
        }
        
        if !theNumber.contains("-") &&  !theNumber.contains("+") && !theNumber.contains("*")  && !theNumber.contains("/") {
            
            return
            
        }
        
        
        
        print(theNumber)
        let stringWithMathematicalOperation: String = theNumber
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
        
        let result: Double = exp.expressionValue(with: nil, context: nil) as! Double
        
        
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



    
    @IBAction func dot(_ sender: Any) {
        
        
        if theNumber.last == "." || theNumber.last == "+" || theNumber.last == "-" || theNumber.last == "*" {
            
            return
        
        }
            
        else{
            
        theNumber += "."
        
        printnum()
        
        }
        
        
    }
    
    
    
    @IBAction func percent(_ sender: Any) {
   if theNumber.last == "." || theNumber.last == "+" || theNumber.last == "-" || theNumber.last == "*" {
                       
    return
}
        
        if theNumber.contains("-") &&  theNumber.contains("+") && theNumber.contains("*")  && theNumber.contains("/") {
            
            return
            
        }
        
        var number = label.text
          
        let number2 = Double(number!) ?? 0
          
              var pecent = number2 / 100
              
              label.text = String(pecent)
        
    }
    


}


