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
        view.backgroundColor = UIColor(named: Constants.AppColors.orangeBackground) /*TEL-124*/ /*TEL-272*/
        initializeHideKeyboard()/*TEL-391*/
        
        nameTextField.setPlaceHolder(text: Constants.nameString) /*TEL-129*/ /*TEL-434*/
        nameTextField.autocapitalizationType = .sentences /*TEL-203*/
        surnameTextField.setPlaceHolder(text: Constants.surnameString) /*TEL-130*/ /*TEL-434*/
        surnameTextField.autocapitalizationType = .sentences /*TEL-204*/
        passwordTextField.setPlaceHolder(text: Constants.passwordString) /*TEL-216*/ /*TEL-434*/
        passwordTextField.isSecureTextEntry = true /*TEL-217*/
        
        /*TEL-131*/
        if emailPassedValue == ""{
            emailTextField.setPlaceHolder(text: Constants.emailString) /*TEL-407*/
        } else {
            emailTextField.text = emailPassedValue
            emailTextField.setPlaceHolder(text: Constants.emailString) /*TEL-202*/ /*TEL-407*/
        }
        SignUpButton.setTitle(Constants.signUpTitle, for: .normal) /*TEL-434*/
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) { /*TEL-127*/ /*TEL-206*/ /*TEL-218*/
        if  isValidEmail(emailTextField.text ?? "") &&
            isValidPassword(passwordTextField.text ?? "") &&
            isFirstLetterCapital(word: nameTextField.text ?? "") && /*TEL-188*/
            isFirstLetterCapital(word: surnameTextField.text ?? "")
        {
            //user should be saved to the database, consider verifying users data
            /*DELTE*/
            alertFunction(vc: self, title: "Success", message: "Welcome to Tell us.")
            /*DELTE*/
            
        } else {
            alertFunction(vc: self, title: Constants.signUpErrorTitle, message: Constants.signUpErrorMessage) /*TEL-178*/ /*TEL-260*//*TEL-434*/
        }
    }
    
}
