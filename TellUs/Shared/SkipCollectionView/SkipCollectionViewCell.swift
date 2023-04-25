//
//  SkipCollectionViewCell.swift
//  TellUs
//
//  Created by Harun Fazlic on 9. 4. 2023..
//

import UIKit

/*TEL-597*/
class SkipCollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        delegate?.didTapButton(in: self)

    }
    
    weak var delegate: SkipCollectionViewCellDelegate?

    
}


protocol SkipCollectionViewCellDelegate: AnyObject {
    func didTapButton(in cell: SkipCollectionViewCell)
}
