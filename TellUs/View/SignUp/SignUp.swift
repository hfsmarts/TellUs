//
//  SignUp.swift
//  TellUs
//
//  Created by Harun Fazlic on 13. 12. 2022..
//

import UIKit

/*TEL-121*/
class SignUp: UIViewController {
    
    var emailPassedValue = "" /*TEL-131*/

    /*TEL-127*/
    @IBOutlet var nameTextField: CustomTextField!
    @IBOutlet var surnameTextField: CustomTextField!
    @IBOutlet var emailTextField: CustomTextField!
    @IBOutlet var SignUpButton: CustomButton! /*TEL-128*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.0) /*TEL-124*/
        
        nameTextField.setPlaceHolder(text: "Name") /*TEL-129*/
        nameTextField.autocapitalizationType = .sentences /*TEL-203*/
        surnameTextField.setPlaceHolder(text: "Surname") /*TEL-130*/
        surnameTextField.autocapitalizationType = .sentences /*TEL-204*/
        
        /*TEL-131*/
        if emailPassedValue == ""{
            emailTextField.setPlaceHolder(text: "Email")
        } else {
            emailTextField.text = emailPassedValue
            emailTextField.setPlaceHolder(text: "Email") /*TEL-202*/
        }
        
        SignUpButton.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00)
        SignUpButton.setTitle("Sign Up", for: .normal)

    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) { /*TEL-127*/
    
        if emailTextField.text == "" || nameTextField.text == "" || surnameTextField.text == "" { /*TEL-184*/
            UtilityFunction().alertFunction(vc: self, title: "Enter Crdentials", message: "Please enter your data!")
        } else if UtilityFunction().isValidEmail(emailTextField.text ?? "") /*Validations for name and surname to be passed*/ {
            //backend part, if name and password satisfied user should be saved to the database. Think of implementing email verification!
            UtilityFunction().alertFunction(vc: self, title: "Success", message: "You entered proper data!")
        } else {
            UtilityFunction().alertFunction(vc: self, title: "Something is wrong", message: "Please enter proper email address!")
        }
    }
    
}
