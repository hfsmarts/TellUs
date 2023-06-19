//
//  MyPosts.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-313*//*TEL-246*//*TEL-637*/
class MyPosts: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var myPostsCollectionView: SuccessCollectionView!
    public var myPosts: [PostModel] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-317*/
        myPostsCollectionView.dataSource = self
        myPostsCollectionView.isPagingEnabled = true
        
        /*TEL-636*/
        let object1 = PostModel(location: "1", likeCount: 10, text: "My first post...", dislikeCount: 0)
        let object2 = PostModel(location: "2", likeCount: 5, text: "This is the second one", dislikeCount: 2)
        let object3 = PostModel(location: "3", likeCount: 15, text: "And the third one...", dislikeCount: 8)
        let object4 = PostModel(location: "4", likeCount: 3, text: "All about fourth post can be found here", dislikeCount: 1)
        let object5 = PostModel(location: "5", likeCount: 7, text: "What to say...", dislikeCount: 4)
        let object6 = PostModel(location: "6", likeCount: 15, text: "And this will be sixth post", dislikeCount: 8)
        let object7 = PostModel(location: "7", likeCount: 15, text: "Seventh post", dislikeCount: 8)
        let object8 = PostModel(location: "8", likeCount: 15, text: "My eighth post on TellUs network", dislikeCount: 8)
        let object9 = PostModel(location: "9", likeCount: 15, text: "One to go, so this is 9/10", dislikeCount: 8)
        let object10 = PostModel(location: "10", likeCount: 15, text: "And that would be it, this is 10th and final post", dislikeCount: 8)
        
        myPosts.append(object1)
        myPosts.append(object2)
        myPosts.append(object3)
        myPosts.append(object4)
        myPosts.append(object5)
        myPosts.append(object6)
        myPosts.append(object7)
        myPosts.append(object8)
        myPosts.append(object9)
        myPosts.append(object10)
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPosts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CollectionViewCell.successCellIdentifier, for: indexPath) as? SuccessCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let object = myPosts[indexPath.row]
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
        myPosts.remove(at: indexPath.item)
        myPostsCollectionView.deleteItems(at: [indexPath])
        showCurrentItem()
        
        if myPosts.isEmpty {
            myPosts.append(PostModel(location: "No location", likeCount: 0, text: "No more posts", dislikeCount: 0))
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
