//
//  Helpers.swift
//  TellUs
//
//  Created by Harun Fazlic on 20. 11. 2022..
//

import UIKit

extension ViewController: UITextFieldDelegate{ /*TEL-44*/ /*TEL-32*/ /*TEL-33*/
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}

