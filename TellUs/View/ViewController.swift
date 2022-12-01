//
//  ViewController.swift
//  TellUs
//
//  Created by Harun Fazlic on 8. 11. 2022..
//

import UIKit

class ViewController: UIViewController {
    
    /*TEL62*/
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*TEL-77*/ /*TEL-89*/
        let newEmailTextField = emailTextField as? CustomTextField
        newEmailTextField?.setPlaceHolder(text: "Email")
        
        /*TEL-78*/ /*TEL-89*/
        let newPasswordTextField = passwordTextField as? CustomTextField;
        newPasswordTextField?.setPlaceHolder(text: "Password")
        
    }
    
    @IBAction func skipButtonLabel(_ sender: UIButton) { /*TEL-54*/
        print("skipButtonLabel is clicked")
    }
    
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {/*TEL-51*/
        print("signInButtonTapped is clicked")
    }
    
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) { /*TEL-52*/
        print("signUpButtonTapped is clicked")
    }
    
    
    @IBAction func forgetPasswordButton(_ sender: UIButton) { /*TEL-60*/
        
        /*TEL-10*/
        let passwordForgetVC = PasswordForget()
        /*TEL-81*/
        passwordForgetVC.passedEmailValue = emailTextField.text ?? ""
        //passwordForgetVC.modalPresentationStyle = .fullScreen /*Can be added in order to have full screen UIViewController*/
        present(passwordForgetVC, animated: true)
    }
    
    @IBAction func aboutButton(_ sender: UIButton) { /*TEL-59*/
        /*TEL-58*/
        let alert = UIAlertController(title: "HFSS", message: "copyright © 2022 all rights reserved", preferredStyle: .alert)
        let doneWithAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(doneWithAlert)
        present(alert, animated: true, completion: nil)
    }
}





