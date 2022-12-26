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
    @IBOutlet var passwordTextField: CustomTextField! /*TEL-215*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.0) /*TEL-124*/
        
        nameTextField.setPlaceHolder(text: "Name") /*TEL-129*/
        nameTextField.autocapitalizationType = .sentences /*TEL-203*/
        surnameTextField.setPlaceHolder(text: "Surname") /*TEL-130*/
        surnameTextField.autocapitalizationType = .sentences /*TEL-204*/
        passwordTextField.setPlaceHolder(text: "Password") /*TEL-216*/
        passwordTextField.isSecureTextEntry = true /*TEL-217*/
        
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
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) { /*TEL-127*/ /*TEL-206*/ /*TEL-218*/
        if  UtilityFunction().isValidEmail(emailTextField.text ?? "") &&
            UtilityFunction().isValidPassword(passwordTextField.text ?? "") &&
            UtilityFunction().isFirstLetterCapital(word: nameTextField.text ?? "") && /*TEL-188*/
            UtilityFunction().isFirstLetterCapital(word: surnameTextField.text ?? "")
        {
            //user should be saved to the database
            UtilityFunction().alertFunction(vc: self, title: "Success", message: "Welcome to Tell us.")
        } else {
            UtilityFunction().alertFunction(vc: self, title: "Error signing up", message: UtilityFunction().message) /*TEL-178*/
        }
    }
    
}
