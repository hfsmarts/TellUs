//
//  CustomThreeDots.swift
//  TellUs
//
//  Created by Harun Fazlic on 9. 1. 2023..
//

import UIKit

class CustomThreeDotsLabel: UILabel{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }


    func setUpLabel(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = "..."
        self.font = UIFont(name: Constants.FontName.boldFont, size: 50)
        self.textColor = .black /*TEL-555*/
    }

}

