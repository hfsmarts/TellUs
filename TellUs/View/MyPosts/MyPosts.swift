//
//  MyPosts.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-313*//*TEL-246*//*TEL-637*/
class MyPosts: UIViewController, UICollectionViewDataSource {
  //  var myPosts: [PostModel] = []
    var currentIndex = 0
    

    @IBOutlet var myPostsCollectionView: SuccessCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-317*/
        myPostsCollectionView.dataSource = self
        myPostsCollectionView.isPagingEnabled = true
        
        /*TEL-667*/
        /*TEL-636*/
        let object1 = PostModel(location: "1", likeCount: 10, text: "My first post...", dislikeCount: 0)
        let object2 = PostModel(location: "2", likeCount: 5, text: "This is the second one", dislikeCount: 2)
      
        
        
        let mySingleton = MyPostsDB.shared
        mySingleton.appendPost(object1)
        mySingleton.appendPost(object2)
        
        

     
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MyPostsDB.shared.myPosts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell.successCellIdentifier, for: indexPath) as? SuccessCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let object = MyPostsDB.shared.myPosts[indexPath.row]
        currentIndex = indexPath.row
        cell.locationLabel.text = object.location
        cell.likeCounterLabel.text = "\(object.likeCount)"
        cell.textViewText.text = object.text
        cell.dislikeCounterLabel.text = "\(object.dislikeCount)"
        
        return cell
    }
    
    
    @IBAction func backButton(_ sender: UIButton) { /*TEL-360*/
        dismiss(animated: true, completion: nil) /*TEL-362*/
    }
    
    
    /*TEL-642*/ /*TEL-662*/
    @IBAction func deletePostButton(_ sender: UIButton) { /*TEL-640*/ /*TEL-641*/
        
        guard let indexPath = getCurrentIndexPath() else {
            return
        }
        MyPostsDB.shared.myPosts.remove(at: indexPath.item)
        
        
    
        myPostsCollectionView.deleteItems(at: [indexPath])
        showCurrentItem()
        
        if  MyPostsDB.shared.myPosts.isEmpty {
            MyPostsDB.shared.myPosts.append(PostModel(location: "No location", likeCount: 0, text: "No more posts", dislikeCount: 0))
            myPostsCollectionView.reloadData()
        }
    }
    
    func getCurrentIndexPath() -> IndexPath? {
        let center = CGPoint(x: myPostsCollectionView.contentOffset.x + myPostsCollectionView.bounds.size.width / 2,
                             y: myPostsCollectionView.contentOffset.y + myPostsCollectionView.bounds.size.height / 2)
        return myPostsCollectionView.indexPathForItem(at: center)
    }
    
    func showCurrentItem() {
        guard getCurrentIndexPath() != nil else {
            return
        }
    }
    
    
}
