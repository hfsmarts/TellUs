//
//  CustomButton.swift
//  TellUs
//
//  Created by Harun Fazlic on 26. 11. 2022..
//

import UIKit

/*TEL-43*/
class CustomButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUPButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPButton()
    }
    
    func setUPButton(){
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont(name: "KleeOne-Regular", size: 18)
        layer.cornerRadius = 12
        clipsToBounds = true
    }
}

