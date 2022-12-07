//
//  PasswordForgetView.swift
//  TellUs
//
//  Created by Harun Fazlic on 7. 12. 2022..
//

import UIKit

class PasswordForgetView: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        addConstraints()

    }
    
    private func addConstraints(){
        
    }
    



}
