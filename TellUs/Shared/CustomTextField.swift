//
//  CustomTextField.swift
//  TellUs
//
//  Created by Harun Fazlic on 27. 11. 2022..
//

import UIKit

/*TEL-65*/
class CustomTextField: UITextField{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTextField()
    }
    
    /*TEL-91*/
    func setUpTextField(){
        self.text = ""
        self.textColor = .black
        self.backgroundColor = .white /*TEL-94*/
        self.borderStyle = .roundedRect
        self.font = UIFont(name: Constants.FontName.boldFont, size: 18)
        self.translatesAutoresizingMaskIntoConstraints = false /*TEL-425*/
        self.delegate = self
    }
    
    /*TEL-76*/
    func setPlaceHolder(text: String){
        self.attributedPlaceholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]) /*TEL-5*/ /*TEL-6*/
    }
    
}


/*TEL-44*/ /*TEL-32*/ /*TEL-33*/
extension CustomTextField: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}





