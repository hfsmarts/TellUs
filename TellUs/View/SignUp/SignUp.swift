//
//  SignUp.swift
//  TellUs
//
//  Created by Harun Fazlic on 13. 12. 2022..
//

import UIKit

/*TEL-121*/

class SignUp: UIViewController {

    /*TEL-127*/
    @IBOutlet var nameTextField: CustomTextField!
    @IBOutlet var surnameTextField: CustomTextField!
    @IBOutlet var emailTextField: CustomTextField!
    @IBOutlet var SignUpButton: CustomButton! /*TEL-128*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.0) /*TEL-124*/
        
        nameTextField.setPlaceHolder(text: "Name") /*TEL-129*/
        surnameTextField.setPlaceHolder(text: "Surname") /*TEL-130*/
        
        SignUpButton.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00)
        SignUpButton.setTitle("Sign Up", for: .normal)

        

    }
    
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) { /*TEL-127*/
            
    }
    
}
