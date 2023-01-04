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
        passwordForgetTextField.setPlaceHolder(text: "Email") /*TEL-200*/
        passwordForgetTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetTextField.autocapitalizationType = .none /*TEL-199*/
        return passwordForgetTextField
    }()
    
    /*TEL-75*/
    let passwordForgetButton: CustomButton = {
        let passwordForgetButton = CustomButton(type: .roundedRect)/*TEL-205*/
        passwordForgetButton.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetButton.setTitle("Submit", for: .normal) /*TEL-104*/
        passwordForgetButton.titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 18) /*TEL-207*/
        passwordForgetButton.backgroundColor = UIColor(named: K.AppColors.blueBackground) /*TEL-104*/
        passwordForgetButton.addTarget(nil, action: #selector(buttonAction), for: .touchUpInside) /*TEL-189*/
        return passwordForgetButton
    }()
    
    /*TEL-189*/ /*TEL-206*/
    @objc func buttonAction(sender: UIButton!) {
        /*TEL-197*/
        if UtilityFunction().isValidEmail(passwordForgetTextField.text ?? ""){
            //backend part, if email satisfied user should recive new password on the email!
            UtilityFunction().alertFunction(vc: self, title: "Email sent", message: "New password is send to your email.")
        } else {
            UtilityFunction().alertFunction(vc: self, title: "Error", message: "Your email is incorrect.")
        }
    }
    
    /*TEL-211*/
    let threeDots: UILabel = {
        let threeDots = UILabel()
        threeDots.translatesAutoresizingMaskIntoConstraints = false
        threeDots.text = "..."
        threeDots.textColor = .black
        threeDots.font = UIFont(name: "KleeOne-SemiBold", size: 50)
        return threeDots
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad() /*TEL-242*/
        view.backgroundColor = UIColor(named: K.AppColors.orangeBackground) /*TEL-272*/ /*TEL-94*/ /*TEL-106*/
        view.addSubview(passwordForgetBackground)
        view.addSubview(passwordForgetTitle)
        view.addSubview(passwordForgetMessage)
        view.addSubview(passwordForgetTextField)
        view.addSubview(passwordForgetButton)
        view.addSubview(threeDots)
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
        /*TEL-212*/
        constraints.append(threeDots.centerYAnchor.constraint(equalTo: passwordForgetBackground.centerYAnchor,constant: 344))
        constraints.append(threeDots.centerXAnchor.constraint(equalTo: passwordForgetBackground.centerXAnchor,constant: 138))
        
        NSLayoutConstraint.activate(constraints)
    }
}



