//
//  CustomTitleLabel.swift
//  TellUs
//
//  Created by Harun Fazlic on 23. 1. 2023..
//

/*TEL-415*/
import UIKit

/*TEL-419*/
class CustomTitleLabel: UILabel{
    
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
        self.text = Constants.titleLabel /*TEL-433*/
        self.font = UIFont(name: Constants.FontName.boldFont, size: 60)
        self.textColor = .black
        
    }
    
}
