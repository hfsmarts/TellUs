//
//  CustomButton.swift
//  TellUs
//
//  Created by Harun Fazlic on 26. 11. 2022..
//

import UIKit

/*TEL-43*/
class CustomButton: UIButton{
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPButton()
    }
    
    func setUPButton(){
        setTitleColor(.black, for: .normal)
        backgroundColor = .orange
        titleLabel?.font = UIFont(name: "KleeOne-SemiBold", size: 20)
        layer.cornerRadius = 12
        clipsToBounds = true
    }
}
