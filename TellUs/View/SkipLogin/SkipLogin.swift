//
//  SkipLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 4. 12. 2022..
//

import UIKit

class SkipLogin: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground)
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell.skipCellIdentifier, for: indexPath) as! SkipCollectionViewCell
        return cell
    }
    
    
}




