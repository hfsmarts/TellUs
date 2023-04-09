//
//  CustomCollectionView.swift
//  TellUs
//
//  Created by Harun Fazlic on 11. 2. 2023..
//

import UIKit

class SuccessCollectionView: UICollectionView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout = CenteredCollectionViewLayout()
        layout.itemSize = self.bounds.size
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        self.collectionViewLayout = layout
        
        self.backgroundColor = UIColor(named: Constants.AppColors.blueBackground)
        self.showsVerticalScrollIndicator = false /*TEL-515*/
        self.showsVerticalScrollIndicator = false /*TEL-515*/
        
        // Register the custom Collection View Cell xib file
        let nib = UINib(nibName: Constants.CollectionViewCell.successCellIdentifier, bundle: nil)
        register(nib, forCellWithReuseIdentifier: Constants.CollectionViewCell.successCellIdentifier)
    }
}

/*TEL-549*/
class CenteredCollectionViewLayout: UICollectionViewFlowLayout {
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        guard let collectionView = collectionView else {
            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }
        
        let targetRect = CGRect(origin: proposedContentOffset, size: collectionView.bounds.size)
        
        let midY = targetRect.midY
        var closestCellIndexPath: IndexPath?
        var closestDistance: CGFloat = CGFloat.greatestFiniteMagnitude
        
        for indexPath in collectionView.indexPathsForVisibleItems {
            let cellRect = self.layoutAttributesForItem(at: indexPath)?.frame ?? .zero
            
            let distance = abs(cellRect.midY - midY)
            
            if distance < closestDistance {
                closestDistance = distance
                closestCellIndexPath = indexPath
            }
        }
        
        if let indexPath = closestCellIndexPath {
            let cellRect = self.layoutAttributesForItem(at: indexPath)?.frame ?? .zero
            let targetY = cellRect.midY - collectionView.bounds.size.height / 2
            return CGPoint(x: proposedContentOffset.x, y: targetY)
        }
        return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
    }
}


