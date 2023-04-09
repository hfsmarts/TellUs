//
//  CustomTextView.swift
//  TellUs
//
//  Created by Harun Fazlic on 19. 12. 2022..
//

import UIKit

/*TEL-147*/
class CustomTextView: UITextView{

      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          setUpTextView()
      }
    
    func setUpTextView() {
        self.text = Constants.textViewDefaultText /*TEL-431*/ /*TEL-142*/
        self.backgroundColor = .clear /*TEL-145*/
        self.textAlignment = .center /*TEL-146*/
        self.font = UIFont(name: Constants.FontName.boldFont, size: 23) /*TEL-149*/ /*TEL-148*/
        self.textColor = .white /*TEL-150*/
        self.autocorrectionType = UITextAutocorrectionType.no /*TEL-151*/
        self.spellCheckingType = UITextSpellCheckingType.no   /*TEL-151*/
        self.autocapitalizationType = UITextAutocapitalizationType.none /*TEL-151*/
        self.isUserInteractionEnabled = false /*TEL-168*/ /*TEL-167*/ /*includes isEditable, isSelectable*/
        self.tintColor = .red /*TEL-404*/
    }
}


/*TEL-163*/
extension CustomTextView {
    func centerVertically() {
        let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fittingSize)
        let topOffset = (bounds.size.height - size.height * zoomScale) / 2
        let positiveTopOffset = max(1, topOffset)
        contentOffset.y = -positiveTopOffset
    }
}








