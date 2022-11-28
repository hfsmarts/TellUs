//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

/*TEL-10*/
class PasswordForget: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .orange .withAlphaComponent(0.2)
        
        
        
        /*TEL-71*/
        passwordForgetMessage.text = "Please enter your email address"
        view.addSubview(passwordForgetMessage)
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetMessage.frame = CGRect(x: 60, y: 320, width: 300, height: 52)
    }
}
