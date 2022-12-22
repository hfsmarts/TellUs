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
        backgroundColor = UIColor(red: 0.99, green: 0.50, blue: 0.14, alpha: 1.00)
        titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 18)
        layer.cornerRadius = 12
        clipsToBounds = true
    }
}

