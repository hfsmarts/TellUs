//
//  CustomLocationLabel.swift
//  TellUs
//
//  Created by Harun Fazlic on 7. 1. 2023..
//

/*TEL-330*/
import UIKit

class CustomLocationLabel: UILabel{
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)


    }
    
    func setUpLabel(){
        self.text = "Sarajevo"
        self.font = UIFont(name: "KleeOne-SemiBold", size: 25)
        self.textColor = .white

    }
    
}


