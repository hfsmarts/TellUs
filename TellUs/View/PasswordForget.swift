//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

/*TEL-10*/
class PasswordForget: UIViewController {
    
    /*TEL-113*/
    private let passwordForgetBackground: UIView = {
        let passwordForgetBackground = UIView()
        passwordForgetBackground.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetBackground.backgroundColor = .clear
        return passwordForgetBackground
    }()
    
    /*TEL-72*/
    let passwordForgetTitle: UILabel = {
        let passwordForgetTitle = UILabel()
        passwordForgetTitle.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetTitle.text = "TELL US"
        passwordForgetTitle.textColor = .black
        passwordForgetTitle.font = UIFont(name: "KleeOne-SemiBold", size: 60)
        return passwordForgetTitle
    }()
    
    /*TEL-71*/
    let passwordForgetMessage: UILabel = {
        let passwordForgetMessage = UILabel()
        passwordForgetMessage.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetMessage.text = "Please enter your email address"
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: "KleeOne-Regular", size: 18)
        return passwordForgetMessage
    }()
    
    /*TEL-74*/
    let passwordForgetTextField: CustomTextField = {
        let passwordForgetTextField = CustomTextField()
        passwordForgetTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordForgetTextField
    }()
    
    /*TEL-75*/
    let passwordForgetButton: CustomButton = {
        let passwordForgetButton = CustomButton()
        passwordForgetButton.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetButton.setTitle("Submit", for: .normal) /*TEL-104*/
        passwordForgetButton.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00) /*TEL-104*/
        return passwordForgetButton
    }()
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1) /*TEL-94*/ /*TEL-106*/
        view.addSubview(passwordForgetBackground)
        view.addSubview(passwordForgetTitle)
        view.addSubview(passwordForgetMessage)
        view.addSubview(passwordForgetTextField)
        view.addSubview(passwordForgetButton)
        addConstraints()
        
    }
    
    private func addConstraints(){
        /*TEL-96*/
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(passwordForgetBackground.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(passwordForgetBackground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(passwordForgetBackground.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(passwordForgetBackground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        /*TEL-72*/
        constraints.append(passwordForgetTitle.centerYAnchor.constraint(equalTo: passwordForgetBackground.centerYAnchor, constant: -158))
        constraints.append(passwordForgetTitle.centerXAnchor.constraint(equalTo: passwordForgetBackground.centerXAnchor))
        /*TEL-71*/
        constraints.append(passwordForgetMessage.centerYAnchor.constraint(equalTo: passwordForgetBackground.centerYAnchor, constant: -25))
        constraints.append(passwordForgetMessage.centerXAnchor.constraint(equalTo: passwordForgetBackground.centerXAnchor))
        /*TEL-74*/
        constraints.append((passwordForgetTextField.widthAnchor.constraint(equalTo: passwordForgetBackground.widthAnchor, multiplier: 0.8)))
        constraints.append((passwordForgetTextField.heightAnchor.constraint(equalTo: passwordForgetBackground.heightAnchor, multiplier: 0.063)))
        constraints.append(passwordForgetTextField.centerYAnchor.constraint(equalTo: passwordForgetBackground.centerYAnchor, constant: 22))
        constraints.append(passwordForgetTextField.centerXAnchor.constraint(equalTo: passwordForgetBackground.centerXAnchor))
        /*TEL-75*/
        constraints.append(passwordForgetButton.widthAnchor.constraint(equalTo: passwordForgetBackground.widthAnchor, multiplier: 0.8))
        constraints.append(passwordForgetButton.heightAnchor.constraint(equalTo: passwordForgetBackground.heightAnchor, multiplier: 0.063))
        constraints.append(passwordForgetButton.centerYAnchor.constraint(equalTo: passwordForgetBackground.centerYAnchor,constant: 99))
        constraints.append(passwordForgetButton.centerXAnchor.constraint(equalTo: passwordForgetBackground.centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        /*TEL-85*/
        passwordForgetTextField.text = ""
    }
}



