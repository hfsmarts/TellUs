//
//  CustomLocationLabel.swift
//  TellUs
//
//  Created by Harun Fazlic on 7. 1. 2023..
//

/*TEL-330*/
import UIKit

class CustomLocationLabel: UILabel{
    
    override init(frame: CGRect) { /*TEL-501*/
        super.init(frame: frame)
        setUpLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpLabel()
    }
    
    func setUpLabel(){
        self.text = Constants.locationDefaultText /*TEL-432*/
        self.font = UIFont(name: Constants.FontName.boldFont, size: 25)
        self.textColor = .white
    }
    
}


