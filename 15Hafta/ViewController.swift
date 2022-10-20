//
//  ViewController.swift
//  UnitTest
//
//  Created by Sümeyye Kılıçoğlu on 18.10.2022.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    var result  = 0
    
    
    private let textfield: UITextField = {
        let textfieldFirst = UITextField()
        textfieldFirst.placeholder = "Enter text here"
        textfieldFirst.font = UIFont.systemFont(ofSize: 15)
        textfieldFirst.borderStyle = UITextField.BorderStyle.roundedRect
        textfieldFirst.autocorrectionType = UITextAutocorrectionType.no
        textfieldFirst.keyboardType = UIKeyboardType.default
        textfieldFirst.returnKeyType = UIReturnKeyType.done
        textfieldFirst.clearButtonMode = UITextField.ViewMode.whileEditing
        textfieldFirst.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        return textfieldFirst
    }()
    
    private let textfield1: UITextField = {
        let textfieldSecond1 = UITextField()
        textfieldSecond1.placeholder = "Enter text here"
        textfieldSecond1.font = UIFont.systemFont(ofSize: 15)
        textfieldSecond1.borderStyle = UITextField.BorderStyle.roundedRect
        textfieldSecond1.autocorrectionType = UITextAutocorrectionType.no
        textfieldSecond1.keyboardType = UIKeyboardType.default
        textfieldSecond1.returnKeyType = UIReturnKeyType.done
        textfieldSecond1.clearButtonMode = UITextField.ViewMode.whileEditing
        textfieldSecond1.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        
        return textfieldSecond1
    }()
    private var labelResult: UILabel = {
        let label = UILabel()
        
        
        
        return label
    }()
    
    private let button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .link
        button.setTitle("+", for: .normal)
        return button
        
    }()
    private let button2: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .link
        button.setTitle("*", for: .normal)
        
        
        
        return button
        
    }()
    private let button3: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .link
        button.setTitle("/", for: .normal)
        
        
        return button
        
    }()
    private let button4: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .link
        button.setTitle("-", for: .normal)
        
        
        return button
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(textfield)
        view.addSubview(textfield1)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(labelResult)
        
        
        
        
        button1.addTarget(self, action: #selector(sum), for: .touchUpInside)
        
        button2.addTarget(self, action: #selector(multiply), for: .touchUpInside)
        
        button3.addTarget(self, action: #selector(divide), for: .touchUpInside)
        
        button4.addTarget(self, action: #selector(minus), for: .touchUpInside)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textfield.leftToSuperview().constant = 60
        textfield.rightToSuperview().constant = -70
        textfield.topToSuperview().constant = 150
        
        textfield1.topToSuperview().constant = 200
        textfield1.leftToSuperview().constant = 60
        textfield1.rightToSuperview().constant = -70
        
        
        button1.topToBottom(of: textfield1).constant = 100
        button1.leftToSuperview().constant = 50
        button1.width(40)
        button1.height(40)
        
        button2.topToBottom(of: textfield1).constant = 100
        button2.leftToRight(of: button1).constant = 50
        button2.width(40)
        button2.height(40)
        
        button3.topToBottom(of: textfield1).constant = 100
        button3.leftToRight(of: button2).constant = 50
        button3.width(40)
        button3.height(40)
        
        button4.topToBottom(of: textfield1).constant = 100
        button4.leftToRight(of: button3).constant = 50
        button4.width(40)
        button4.height(40)
        
        
        labelResult.topToSuperview().constant = 500
        labelResult.leftToSuperview().constant = 100
        labelResult.rightToSuperview().constant = -100
        labelResult.bottomToSuperview().constant = -300
     
        
        
        
    }
    
    @objc func sum()   {
       
       
        let text1 = self.textfield.text
        let text2 = self.textfield1.text
        let num1 = Int(text1 ?? "0") ?? 0
        let num2 = Int(text2 ?? "0") ?? 0
        let result = Math.shared.sum(number1: num1, number2: num2)
        self.labelResult.text = String(result)
    }
    
    
    @objc func multiply() {
        
         let text1 = self.textfield.text
         let text2 = self.textfield1.text
         let num1 = Int(text1 ?? "0") ?? 0
         let num2 = Int(text2 ?? "0") ?? 0
         let result = Math.shared.multiply(number1: num1, number2: num2)
         self.labelResult.text = String(result)
        
    }
    
    
    @objc  func divide()  {
        
         let text1 = self.textfield.text
         let text2 = self.textfield1.text
         let num1 = Int(text1 ?? "0") ?? 0
         let num2 = Int(text2 ?? "0") ?? 0
         let result = Math.shared.divide(number1: num1, number2: num2)
         self.labelResult.text = String(result)
     
        
    }
    
    
    @objc func minus() {
        
         let text1 = self.textfield.text
         let text2 = self.textfield1.text
         let num1 = Int(text1 ?? "0") ?? 0
         let num2 = Int(text2 ?? "0") ?? 0
         let result = Math.shared.minus(number1: num1, number2: num2)
         self.labelResult.text = String(result)
        
    }
    
}

