//
//  BackButton.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-290*/ /*TEL-278*/

class BackButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPButton()
    }
    
    func setUPButton(){
        setTitleColor(.black, for: .normal) /*TEL-281*/
        backgroundColor = .clear /*TEL-284*/ /*TEL-280*/
        titleLabel?.font = UIFont(name: Constants.FontName.boldFont, size: 25) /*TEL-286*/ /*TEL-282*/
        setTitle(Constants.backButtonTitle, for: .normal) /*TEL-285*/ /*TEL-429*/
    }


    
}
