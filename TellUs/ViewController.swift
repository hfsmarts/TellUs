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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
     
        emailLabel.attributedPlaceholder = NSAttributedString(
            string: "Email",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        
        passwordLabel.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
        )
        
        
        
    }
    
    
}

