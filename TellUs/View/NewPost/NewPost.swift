//
//  NewPost.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-315*/
class NewPost: UIViewController {
    
    @IBOutlet var locationLabel: CustomLocationLabel! /*TEL-333*/
    @IBOutlet var userPost: CustomTextView! /*TEL-336*/
    var newPosts = [newPostItem]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-316*/
        initializeHideKeyboard() /*TEL-401*/
        
        userPost.text = Constants.newPostText /*TEL-337*/ /*TEL-436*/
        userPost.isUserInteractionEnabled = true /*TEL-346*/
        userPost.addDoneButton(title: Constants.doneButtonTitle, target: self, selector: #selector(tapDone(sender:))) /*TEL-358*/ /*TEL-436*/
    }
    
    @objc func tapDone(sender: Any) { /*TEL-358*/
        self.view.endEditing(true)
    }  
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userPost.centerVertically()/*TEL-382*/
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) { /*TEL-327*/
        dismiss(animated: true, completion: nil) /*TEL-328*/
    }
    
    @IBAction func correctButtonTapped(_ sender: UIButton) { /*TEL-557*/
        if let currentPost = userPost.text {
            if currentPost != "Type here..." {
                let newPost = newPostItem(itemId: 0, itemText: "\(currentPost)") /*TEL-561*/
                newPosts.append(newPost)
            } else {
                print("nothing changed")
            }
        }
    }
    
    
    
    
    
}



