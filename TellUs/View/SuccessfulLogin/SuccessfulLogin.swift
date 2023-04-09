//
//  SuccessfulLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 20. 12. 2022..
//

import UIKit

/*TEL-172*/
class SuccessfulLogin: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var successCollectionView: SuccessCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-173*/ /*TEL-268*/
        successCollectionView.dataSource = self
        successCollectionView.isPagingEnabled = true
        
        //Text below should be loaded from database, or should be begining info for the user, how to use the app
        //successfulLoginPostText.text = Constants.successfulLoginPostText /*TEL-435*/
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell.successCellIdentifier, for: indexPath) as! SuccessCollectionViewCell
        return cell
    }
    
    /*TEL-438*/
    @IBAction func hamburgerButton(_ sender: UIButton) { /*TEL-455*/
        let userNavigationVC = UserNavigation() /*TEL-456*/
        present(userNavigationVC, animated: true)
    }
    
    @IBAction func plusButton(_ sender: UIButton) { /*TEL-445*/
        let newPostVC = NewPost()
        newPostVC.modalPresentationStyle = .fullScreen /*TEL-448*/
        present(newPostVC, animated: true) /*TEL-447*/
    }
}










