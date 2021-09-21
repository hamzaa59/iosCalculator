//
//  ViewController.swift
//  iosCalculator
//
//  Created by Hamza Arif on 16/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTextFieldResult: UILabel!
    
    var varNumber1 = 0
    var varNumber2 = 0
    var varNumberResult = 0
    
    var varOperator = "+"
    
    @IBOutlet var btn1: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in btn1 {
            
            button.layer.cornerRadius = button.frame.size.height / 2;
        }
    }


    @IBAction func button1(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "1"
    }
    @IBAction func button2
    (sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "2"

    }
    @IBAction func button3(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "3"

    }
    @IBAction func button4(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "4"

    }
    @IBAction func button5(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "5"

    }
    @IBAction func button6(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "6"

    }
    @IBAction func button7(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "7"

    }
    @IBAction func button8(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "8"

    }
    @IBAction func buttonD(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "."

    }
    @IBAction func button9(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "9"

    }
    @IBAction func button0(sender:UIButton){
        uiTextFieldResult.text = uiTextFieldResult.text! + "0"

    }
    @IBAction func buttonPlus(sender:UIButton){
        varOperator = "+"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    @IBAction func buttonMinus(sender:UIButton){
        varOperator = "-"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    @IBAction func buttonMultiple(sender:UIButton){
        varOperator = "*"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    @IBAction func buttonDivision(sender:UIButton){
        varOperator = "/"
        varNumber1 = Int(uiTextFieldResult.text!)!
        clearText()
    }
    @IBAction func buttonEqual(sender:UIButton){
        varNumber2 = Int(uiTextFieldResult.text!)!
        switch varOperator {
        case "+":
            varNumberResult = varNumber1 + varNumber2
            uiTextFieldResult.text = String(varNumberResult)
            
        case "-":
            varNumberResult = varNumber1 - varNumber2
            uiTextFieldResult.text = String(varNumberResult)
            
        case "*":
            varNumberResult = varNumber1 * varNumber2
            uiTextFieldResult.text = String(varNumberResult)
            
        case "/":
            varNumberResult = varNumber1 / varNumber2
            uiTextFieldResult.text = String(varNumberResult)
        
        
        
        default:
            
            uiTextFieldResult.text = "error"
        
        }
    }
    @IBAction func buttonClear(sender:UIButton){
        clearText()
    }
    func clearText() {
        uiTextFieldResult.text = ""
        
    }



    
    
    
    
    }

    
    
    
    


