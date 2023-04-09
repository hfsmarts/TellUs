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
    
    /*TEL-72*/ /*TEL-420*/
    let passwordForgetTitle: CustomTitleLabel = {
        let passwordForgetTitle = CustomTitleLabel()
        return passwordForgetTitle
    }()
    
    /*TEL-71*/
    let passwordForgetMessage: UILabel = {
        let passwordForgetMessage = UILabel()
        passwordForgetMessage.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetMessage.text = Constants.passwordForgetMessage /*TEL-424*/
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: Constants.FontName.regularFont, size: 18)
        return passwordForgetMessage
    }()
    
    /*TEL-74*/
    let passwordForgetTextField: CustomTextField = {
        let passwordForgetTextField = CustomTextField()
        passwordForgetTextField.setPlaceHolder(text: Constants.emailString) /*TEL-200*/ /*TEL-408*/
        passwordForgetTextField.autocapitalizationType = .none /*TEL-199*/
        return passwordForgetTextField
    }()
    
    /*TEL-75*/
    let passwordForgetButton: CustomButton = {
        let passwordForgetButton = CustomButton(type: .roundedRect)/*TEL-205*/
        passwordForgetButton.setTitle(Constants.passwordForgetButtonTitle, for: .normal) /*TEL-104*/
        passwordForgetButton.titleLabel?.font = UIFont(name: Constants.FontName.boldFont, size: 18) /*TEL-207*/
        passwordForgetButton.addTarget(nil, action: #selector(buttonAction), for: .touchUpInside) /*TEL-189*/
        return passwordForgetButton
    }()
    
    /*TEL-189*/ /*TEL-206*/
    @objc func buttonAction(sender: UIButton!) {
        /*TEL-197*/
        if isValidEmail(passwordForgetTextField.text ?? ""){
            //backend part, if email satisfied user should recive new password on the email!
            alertFunction(vc: self, title: Constants.passwordForgetEmailSent, message: Constants.passwordForgetEmailSentMessage)
        } else {
            alertFunction(vc: self, title: Constants.errorString , message: Constants.errorMessage)
        }
    }
    
    /*TEL-211*/
    let threeDots: CustomThreeDotsLabel = {
        let threeDots = CustomThreeDotsLabel()
        return threeDots
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad() /*TEL-242*/
        view.backgroundColor = UIColor(named: Constants.AppColors.orangeBackground) /*TEL-272*/ /*TEL-94*/ /*TEL-106*/
        initializeHideKeyboard()/*TEL-398*/ /*TEL-402*/
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



