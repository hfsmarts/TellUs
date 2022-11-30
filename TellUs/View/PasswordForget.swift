//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

let passwordForgetMessage = UILabel()/*TEL-71*/
let passwordForgetTitle = UILabel()/*TEL-72*/
let passwordForgetTextField = CustomTextField() /*TEL-74*/

/*TEL-10*/
class PasswordForget: UIViewController{
    
    var passedEmailValue = "" /*TEL-81*/
    
    override func viewDidLoad() {
        view.backgroundColor = .orange .withAlphaComponent(1)
        
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
        passwordForgetTextField.backgroundColor = .white //D9D9D9
        passwordForgetTextField.borderStyle = .roundedRect
       // passwordForgetTextField.textColor = .black
       // passwordForgetTextField.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetTextField.frame = CGRect(x: 45, y: 375, width: 300, height: 40)
        view.addSubview(passwordForgetTextField)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        /*TEL-85*/
        passwordForgetTextField.text = ""
    }
}
