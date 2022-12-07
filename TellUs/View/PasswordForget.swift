//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

let passwordForgetMessage = UILabel() /*TEL-71*/
let passwordForgetTitle = UILabel() /*TEL-72*/
let passwordForgetTextField = CustomTextField() /*TEL-74*/
let passwordForgetButton = CustomButton() /*TEL-75*/

/*TEL-10*/
class PasswordForget: UIViewController{
    
    
    
    var passedEmailValue = "" /*TEL-81*/
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.00) /*TEL-94*/ /*TEL-106*/
        
        /*TEL-72*/
        passwordForgetTitle.text = "TELL US"
        passwordForgetTitle.textColor = .black
        passwordForgetTitle.font = UIFont(name: "KleeOne-SemiBold", size: 60)
        passwordForgetTitle.frame = CGRect(x: 75, y: 185, width: 300, height: 60)
        view.addSubview(passwordForgetTitle)
        
        /*TEL-71*/
        passwordForgetMessage.text = "Please enter your email address"
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetMessage.frame = CGRect(x: 60, y: 320, width: 300, height: 52)
        view.addSubview(passwordForgetMessage)
        
        /*TEL-74*/
        if passedEmailValue == ""{
            passwordForgetTextField.setPlaceHolder(text: "Email")
        } else {
            passwordForgetTextField.text = passedEmailValue
        }
        passwordForgetTextField.frame = CGRect(x: 45, y: 375, width: 300, height: 40)
        view.addSubview(passwordForgetTextField)
        
        /*TEL-104*/
        passwordForgetButton.setTitle("Submit", for: .normal)
        passwordForgetButton.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00)
        passwordForgetButton.frame = CGRect(x: 45, y: 430, width: 300, height: 40)
        view.addSubview(passwordForgetButton)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        /*TEL-85*/
        passwordForgetTextField.text = ""
    }
}
