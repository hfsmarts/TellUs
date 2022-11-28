//
//  CustomTextField.swift
//  TellUs
//
//  Created by Harun Fazlic on 27. 11. 2022..
//

import UIKit

/*TEL-65*/
class CustomTextField: UITextField{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPButton()
    }
    
    func setUPButton(){
        self.textColor = .black
        self.font = UIFont(name: "KleeOne-SemiBold", size: 18)
        self.delegate = self
    }
    
}

extension CustomTextField: UITextFieldDelegate{ /*TEL-44*/ /*TEL-32*/ /*TEL-33*/
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}
