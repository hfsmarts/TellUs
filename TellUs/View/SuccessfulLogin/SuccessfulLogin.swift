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
        
        /*TEL-626*/
        let object1 = PostModel(location: "New York", likeCount: 10, text: "Hi from Manhattan, just finished morning Central Park run.", dislikeCount: 5)
        let object2 = PostModel(location: "Sarajevo", likeCount: 5, text: "Zna se gdje su nabolji cevapi.", dislikeCount: 2)
        let object3 = PostModel(location: "London", likeCount: 15, text: "Getting ready for new rain interval...", dislikeCount: 8)
        let object4 = PostModel(location: "Dubai", likeCount: 3, text: "Habibi, come to Dubai...", dislikeCount: 1)
        let object5 = PostModel(location: "Kiev", likeCount: 7, text: "What to say...", dislikeCount: 4)
        let object6 = PostModel(location: "Lisabon", likeCount: 15, text: "Tram as a main public transport vehicle.", dislikeCount: 8)
        let object7 = PostModel(location: "Tokyo", likeCount: 15, text: "Definitly worh of visit. But this year so popular and crovded.", dislikeCount: 8)
        let object8 = PostModel(location: "Barcelona", likeCount: 15, text: "La berchelona, el classicoe via Real, un passo adelante!", dislikeCount: 8)
        let object9 = PostModel(location: "Zagreb", likeCount: 15, text: "Ja moram poc na put, kufer moj je pun. Kupujem kartu u jednom pravu, stop uz to.", dislikeCount: 8)
        let object10 = PostModel(location: "Sidney", likeCount: 15, text: "Surfing, surfing, and surfin... Little bit of Opera as well... ", dislikeCount: 8)
        
        posts.append(object1)
        posts.append(object2)
        posts.append(object3)
        posts.append(object4)
        posts.append(object5)
        posts.append(object6)
        posts.append(object7)
        posts.append(object8)
        posts.append(object9)
        posts.append(object10)
        
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










