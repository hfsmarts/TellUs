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
    @IBOutlet var signInButton: CustomButton! /*TEL-384*/
    @IBOutlet var signUpButton: CustomButton! /*TEL-385*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*TEL-616*/
        let navigationController = UINavigationController()
        navigationController.setViewControllers([self], animated: false)

        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-271*/
        initializeHideKeyboard()/*TEL-388*/
        
        //DELETE
        emailTextField.text = "hfsmarts@aol.com" /*TEL-234*/
        passwordTextField.text = "Hamo78new4444!"
        //DELETE
        
        /*TEL-77*/ /*TEL-89*/
        let newEmailTextField = emailTextField as? CustomTextField
        newEmailTextField?.setPlaceHolder(text: Constants.emailString) /*TEL-406*/
        
        /*TEL-78*/ /*TEL-89*/
        let newPasswordTextField = passwordTextField as? CustomTextField
        newPasswordTextField?.setPlaceHolder(text: Constants.passwordString) /*TEL-409*/
        
        /*TEL-386*/
        signInButton.backgroundColor = UIColor(named: Constants.AppColors.orangeBackground)
        signUpButton.backgroundColor = UIColor(named: Constants.AppColors.orangeBackground)
    }
    
    @IBAction func skipButtonLabel(_ sender: UIButton) { /*TEL-54*/
        /*TEL-609*/
        let skipLoginVC = SkipLogin()
        self.navigationController?.pushViewController(skipLoginVC, animated: true)
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {/*TEL-51*/
        /*TEL-171*/ /*TEL-206*/
        if isValidEmail(emailTextField.text ?? "") && isValidPassword(passwordTextField.text ?? ""){ /*TEL-182*/ /*TEL-191*/
            //if user is in database login will be successful
            
            let successfulLoginVC = SuccessfulLogin()
            successfulLoginVC.modalPresentationStyle = .fullScreen
            present(successfulLoginVC, animated: true)
            
        } else {
            alertFunction(vc: self, title: Constants.loginErrorTitle /*TEL-413*/, message: Constants.loginErrorMessage /*TEL-414*/) /*TEL-178*/
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
            passwordForgetVC.passwordForgetTextField.setPlaceHolder(text: Constants.emailString) /*TEL-411*/
        } else {
            passwordForgetVC.passwordForgetTextField.text = emailTextField.text ?? ""
        }
        present(passwordForgetVC, animated: true)
    }
}





