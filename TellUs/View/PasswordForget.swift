//
//  PasswordForget.swift
//  TellUs
//
//  Created by Harun Fazlic on 28. 11. 2022..
//

import UIKit

let passwordForgetMessage = UILabel() /*TEL-71*/
let passwordForgetTitle = UILabel() /*TEL-72*/
let passwordForgetTextField = CustomTextField() /*TEL-74*/
let passwordForgetButton = CustomButton() /*TEL-75*/

/*TEL-10*/
class PasswordForget: UIViewController{
    
    //test one /*TEL-113*/
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .clear
        return myView
    }()
    let titleLabel: UILabel = {
       let passwordForgetTitle = UILabel()
        passwordForgetTitle.translatesAutoresizingMaskIntoConstraints = false
        passwordForgetTitle.text = "TELL US"
        passwordForgetTitle.textColor = .red
        passwordForgetTitle.font = UIFont(name: "KleeOne-SemiBold", size: 60)
        return passwordForgetTitle
    }()
    //test one end
    
    var passedEmailValue = "" /*TEL-81*/
    
    override func viewDidLoad() {
        //test one
        view.addSubview(myView)
        view.addSubview(titleLabel)
        addConstraints()
        //test one end

        view.backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.00) /*TEL-94*/ /*TEL-106*/
        
        /*TEL-72*/
        passwordForgetTitle.text = "TELL US"
        passwordForgetTitle.textColor = .black
        passwordForgetTitle.font = UIFont(name: "KleeOne-SemiBold", size: 60)
        passwordForgetTitle.frame = CGRect(x: 75, y: 185, width: 300, height: 60)
        view.addSubview(passwordForgetTitle)
        
        /*TEL-71*/
        passwordForgetMessage.text = "Please enter your email address"
        passwordForgetMessage.textColor = .white
        passwordForgetMessage.font = UIFont(name: "KleeOne-Regular", size: 18)
        passwordForgetMessage.frame = CGRect(x: 60, y: 320, width: 300, height: 52)
        view.addSubview(passwordForgetMessage)
        
        /*TEL-74*/
        if passedEmailValue == ""{
            passwordForgetTextField.setPlaceHolder(text: "Email")
        } else {
            passwordForgetTextField.text = passedEmailValue
        }
        passwordForgetTextField.frame = CGRect(x: 45, y: 375, width: 300, height: 40)
        view.addSubview(passwordForgetTextField)
        
        /*TEL-104*/
        passwordForgetButton.setTitle("Submit", for: .normal)
        passwordForgetButton.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00)
        passwordForgetButton.frame = CGRect(x: 45, y: 430, width: 300, height: 40)
        view.addSubview(passwordForgetButton)
        
    }
    
    //test one
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        //Add
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        //Step three add constraints to the view
        constraints.append(titleLabel.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(titleLabel.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        constraints.append(titleLabel.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: myView.centerXAnchor))

        //Activate(Applying)
        NSLayoutConstraint.activate(constraints)
    }
    //test one end
    
    
    
    
    
    
    
    override func viewDidDisappear(_ animated: Bool) {
        /*TEL-85*/
        passwordForgetTextField.text = ""
    }
}
