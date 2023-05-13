//
//  CustomCollectionViewCell.swift
//  TellUs
//
//  Created by Harun Fazlic on 11. 2. 2023..
//

/*TEL-510*/
import UIKit

class SuccessCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var locationLabel: CustomLocationLabel!
    @IBOutlet var likeCounterLabel: UILabel!
    @IBOutlet var textViewText: CustomTextView!
    @IBOutlet var dislikeCounterLabel: UILabel! /*TEL-539*/
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        textViewText.centerVertically()/*TEL-538*/
    }
}
