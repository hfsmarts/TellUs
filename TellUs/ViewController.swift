//
//  ViewController.swift
//  TellUs
//
//  Created by Harun Fazlic on 8. 11. 2022..
//




import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emailLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        emailLabel.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]) /*TEL-5*/
        passwordLabel.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])/*TEL-6*/
                
        signInButton.layer.cornerRadius = 12 /*TEL-34*/
        signInButton.clipsToBounds = true /*TEL-41*/
        signUpButton.layer.cornerRadius = 12 /*TEL-35*/
        signUpButton.clipsToBounds = true /*TEL-42*/

        
        signInButton.setTitle("Sign In", for: .normal) /*TEL-37*/
        signUpButton.setTitle("Sign Up", for: .normal) /*TEL-38*/
 
        signInButton.titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 20) /*TEL-39*/
        signUpButton.titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 20) /*TEL-40*/


        
    }
}

