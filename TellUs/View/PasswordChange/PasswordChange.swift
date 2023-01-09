//
//  PasswordChange.swift
//  TellUs
//
//  Created by Harun Fazlic on 9. 1. 2023..
//

import UIKit

/*TEL-352*/
class PasswordChange: PasswordForget { /*TEL-356*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordForgetMessage.text = "Please enter your password"
        passwordForgetTextField.setPlaceHolder(text: "Password")

    
    }



}
