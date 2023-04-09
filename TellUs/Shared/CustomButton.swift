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
        backgroundColor = UIColor(named: Constants.AppColors.blueBackground)
        titleLabel?.font = UIFont(name: Constants.FontName.boldFont, size: 18)
        layer.cornerRadius = 12
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false /*TEL-427*/
    }
    
}

