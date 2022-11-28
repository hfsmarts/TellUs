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
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]) /*TEL-5*/
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])/*TEL-6*/
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
        let rootVC = PasswordForget()
        let navVc = UINavigationController(rootViewController: rootVC)
        present(navVc, animated: true)
    }
    
    @IBAction func aboutButton(_ sender: UIButton) { /*TEL-59*/
        /*TEL-58*/
        let alert = UIAlertController(title: "HFSS", message: "copyright © 2022 all rights reserved", preferredStyle: .alert)
        let doneWithAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(doneWithAlert)
        present(alert, animated: true, completion: nil)
    }
}





