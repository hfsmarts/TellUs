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
        setTitleColor(.black, for: .normal)
        backgroundColor = .clear /*TEL-284*/
        titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 25) /*TEL-286*/
        setTitle("back", for: .normal) /*TEL-285*/
    }
    
    
}
