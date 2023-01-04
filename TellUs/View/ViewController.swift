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
        view.backgroundColor = UIColor(named: "BackgroundBlue") /*TEL-271*/
        
        /*TEL-77*/ /*TEL-89*/
        let newEmailTextField = emailTextField as? CustomTextField
        newEmailTextField?.setPlaceHolder(text: "Email")
        
        //DELETE
        emailTextField.text = "hfsmarts@aol.com" /*TEL-234*/
        passwordTextField.text = "Hamo78new4444!"
        //DELETE
        
        
        
        /*TEL-78*/ /*TEL-89*/
        let newPasswordTextField = passwordTextField as? CustomTextField
        newPasswordTextField?.setPlaceHolder(text: "Password")
    }
    
    @IBAction func skipButtonLabel(_ sender: UIButton) { /*TEL-54*/
        
        /*TEL-108*/
        let skipLoginVC = SkipLogin()
        //        skipLoginVC.modalPresentationStyle = .fullScreen /*TEL-109*/
        present(skipLoginVC, animated: true)
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {/*TEL-51*/
        /*TEL-171*/ /*TEL-206*/
        if UtilityFunction().isValidEmail(emailTextField.text ?? "") && UtilityFunction().isValidPassword(passwordTextField.text ?? ""){ /*TEL-182*/ /*TEL-191*/
            //if user is in database login will be successful
            
            let successfulLoginVC = SuccessfulLogin()
            successfulLoginVC.modalPresentationStyle = .fullScreen
            present(successfulLoginVC, animated: true)
            
        } else {
            UtilityFunction().alertFunction(vc: self, title: "Error logging in", message: "Your email or password is incorrect.") /*TEL-178*/
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
}




