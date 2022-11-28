//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

let passwordForgetMessage = UILabel()/*TEL-71*/
let passwordForgetTitle = UILabel()/*TEL-72*/

/*TEL-10*/
class PasswordForget: UIViewController{
    override func viewDidLoad() {
        view.backgroundColor = .orange .withAlphaComponent(0.95)
        
        /*TEL-72*/
        passwordForgetTitle.text = "TELL US"
        view.addSubview(passwordForgetTitle)
        passwordForgetTitle.textColor = .black
        passwordForgetTitle.font = UIFont(name: "KleeOne-SemiBold", size: 60)
        passwordForgetTitle.frame = CGRect(x: 75, y: 185, width: 300, height: 60)

        /*TEL-71*/
        passwordForgetMessage.text = "Please enter your email address"
        view.addSubview(passwordForgetMessage)
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetMessage.frame = CGRect(x: 60, y: 320, width: 300, height: 52)
    }
}
