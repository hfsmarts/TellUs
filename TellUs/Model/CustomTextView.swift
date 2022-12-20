//
//  CustomTextView.swift
//  TellUs
//
//  Created by Harun Fazlic on 19. 12. 2022..
//

import UIKit

/*TEL-147*/
class CustomTextView: UITextView{
    
//    init(frame: CGRect) {
//          super.init(frame: frame, textContainer: nil)
//        setUpTextView()
//    }

      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          setUpTextView()
      }
    
    func setUpTextView() {
        
        self.text = "Consider one more time signing up to Tell US!" /*TEL-142*/
        self.backgroundColor = .clear /*TEL-145*/
        self.textAlignment = .center /*TEL-146*/
        self.font = UIFont(name: "KleeOne-SemiBold", size: 23) /*TEL-149*/
        self.textColor = .white /*TEL-150*/
        self.autocorrectionType = UITextAutocorrectionType.no /*TEL-151*/
        self.spellCheckingType = UITextSpellCheckingType.no   /*TEL-151*/
        self.autocapitalizationType = UITextAutocapitalizationType.none /*TEL-151*/
        //        skipLoginPostText.isEditable = true
        //        skipLoginPostText.isSelectable = true
      
        
    }
}
