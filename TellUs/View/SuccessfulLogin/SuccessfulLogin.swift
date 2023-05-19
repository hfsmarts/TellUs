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
    var posts: [PostModel] = [] /*TEL-623*/ /*TEL-625*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-173*/ /*TEL-268*/
        successCollectionView.dataSource = self
        successCollectionView.isPagingEnabled = true
        
        //Text below should be loaded from database, or should be begining info for the user, how to use the app
        //successfulLoginPostText.text = Constants.successfulLoginPostText /*TEL-435*/
        
        let object1 = PostModel(location: "Location 1", likeCount: 10, text: "Text 1", dislikeCount: 5)
        let object2 = PostModel(location: "Location 2", likeCount: 5, text: "Text 2", dislikeCount: 2)
        let object3 = PostModel(location: "Location 3", likeCount: 15, text: "Text 3", dislikeCount: 8)
        let object4 = PostModel(location: "Location 4", likeCount: 3, text: "Text 4", dislikeCount: 1)
        let object5 = PostModel(location: "Location 5", likeCount: 7, text: "Text 5", dislikeCount: 4)
        
        posts.append(object1)
        posts.append(object2)
        posts.append(object3)
        posts.append(object4)
        posts.append(object5)
        
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell.successCellIdentifier, for: indexPath) as? SuccessCollectionViewCell else {
            return UICollectionViewCell()
        }

        let object = posts[indexPath.row]
        cell.locationLabel.text = object.location
        cell.likeCounterLabel.text = "\(object.likeCount)"
        cell.textViewText.text = object.text
        cell.dislikeCounterLabel.text = "\(object.dislikeCount)"

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










