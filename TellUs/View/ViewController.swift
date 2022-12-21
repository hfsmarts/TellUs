//
//  ViewController.swift
//  TellUs
//
//  Created by Harun Fazlic on 8. 11. 2022..
//

import UIKit
class ViewController: UIViewController{
    
    /*TEL62*/
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00)
        
        /*TEL-77*/ /*TEL-89*/
        let newEmailTextField = emailTextField as? CustomTextField
        newEmailTextField?.setPlaceHolder(text: "Email")
        /*TEL-78*/ /*TEL-89*/
        let newPasswordTextField = passwordTextField as? CustomTextField;
        newPasswordTextField?.setPlaceHolder(text: "Password")
    }
    
    @IBAction func skipButtonLabel(_ sender: UIButton) { /*TEL-54*/
        
        /*TEL-108*/
        let skipLoginVC = SkipLogin()
//        skipLoginVC.modalPresentationStyle = .fullScreen /*TEL-109*/
        present(skipLoginVC, animated: true)
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {/*TEL-51*/
        /*TEL-171*/
        
         if emailTextField.text == "" || passwordTextField.text == "" {
            UtilityFunction().alertFunction(vc: self, title: "Enter Crdentials", message: "Please enter your email and password!") /*TEL-180*/
         }
        
        
        
        
//        if emailTextField.text == "123@abc.com" && passwordTextField.text!.count > 6  {
//            let successfulLoginVC = SuccessfulLogin()
//            present(successfulLoginVC, animated: true)
//        }
//
//
//        else if emailTextField.text == "" || passwordTextField.text == "" {
//            UtilityFunction().alertFunction(vc: self, title: "Enter Crdentials", message: "Please enter your email and password!") /*TEL-180*/
//        }
        
        
        else {
            UtilityFunction().alertFunction(vc: self, title: "Wrong Crdentials", message: "Please check your email or password!") /*TEL-178*/
        }
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) { /*TEL-52*/
        
        /*TEL-122*/
        let signUpVC = SignUp()
        signUpVC.emailPassedValue = emailTextField.text ?? ""
        present(signUpVC, animated: true)
    }
    
    @IBAction func forgetPasswordButton(_ sender: UIButton) { /*TEL-60*/
        
        /*TEL-10*/
        let passwordForgetVC = PasswordForget()
        /*TEL-81*/ /*TEL-115*/
        if emailTextField.text == ""{
            passwordForgetVC.passwordForgetTextField.setPlaceHolder(text: "Email")
        } else {
            passwordForgetVC.passwordForgetTextField.text = emailTextField.text ?? ""
        }
        present(passwordForgetVC, animated: true)
    }
    
    @IBAction func aboutButton(_ sender: UIButton) { /*TEL-59*/
        UtilityFunction().alertFunction(vc: self, title: "HFSS", message: "copyright © 2022 all rights reserved") /*TEL-58*/ /*TEL-179*/
    }
}




