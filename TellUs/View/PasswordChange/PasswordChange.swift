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
        
        passwordForgetMessage.text = Constants.passwordChangeMessage /*TEL-437*/
        passwordForgetTextField.setPlaceHolder(text: Constants.passwordString) /*TEL-437*/
        passwordForgetTextField.isSecureTextEntry = true /*TEL-357*/
        
        //If current logged in user has email in the base entered textFieldData matches theat email and enterpassword matches the password in database. New password should be generated and send to the email adress.

    
    }



}
