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
        self.textColor = .black
        self.backgroundColor = UIColor(rgb: 0xD9D9D9)
        self.borderStyle = .roundedRect
        self.font = UIFont(name: "KleeOne-SemiBold", size: 18)
        self.delegate = self
    }
    
    /*TEL-76*/
    func setPlaceHolder(text: String){
        self.attributedPlaceholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]) /*TEL-5*/ /*TEL-6*/
    }
}

extension CustomTextField: UITextFieldDelegate{ /*TEL-44*/ /*TEL-32*/ /*TEL-33*/
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
}

/*TEL-92*/
extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
