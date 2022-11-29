//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

private let passwordForgetMessage = UILabel()/*TEL-71*/
private let passwordForgetTitle = UILabel()/*TEL-72*/
private let passwordForgetTextField = UITextField() /*TEL-74*/

/*TEL-10*/
class PasswordForget: UIViewController{
    
    var passedEmailValue: String? = nil /*TEL-81*/
            
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
        passwordForgetTextField.attributedPlaceholder = NSAttributedString(string: "\(passedEmailValue ?? "Email")" /*TEL-81*/, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        passwordForgetTextField.backgroundColor = .white //D9D9D9
        passwordForgetTextField.borderStyle = .roundedRect
        passwordForgetTextField.textColor = .black
        passwordForgetTextField.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetTextField.frame = CGRect(x: 45, y: 375, width: 300, height: 40)
        view.addSubview(passwordForgetTextField)
    
    }
}
