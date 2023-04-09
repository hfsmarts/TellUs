//
//  SkipCollectionView.swift
//  TellUs
//
//  Created by Harun Fazlic on 9. 4. 2023..
//

/*Test comment*/

import UIKit

/*TEL-597*/
class SkipCollectionView: UICollectionView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout = CenteredCollectionViewLayout()
        layout.itemSize = self.bounds.size
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        self.collectionViewLayout = layout
        
        self.backgroundColor = UIColor(named: Constants.AppColors.blueBackground)
        self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        
        // Register the custom Collection View Cell xib file
        let nib = UINib(nibName: Constants.CollectionViewCell.skipCellIdentifier, bundle: nil)
        register(nib, forCellWithReuseIdentifier: Constants.CollectionViewCell.skipCellIdentifier)
    }
}
