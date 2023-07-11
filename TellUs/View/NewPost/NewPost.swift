//
//  NewPost.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-315*/
class NewPost: UIViewController, UITextViewDelegate {
    
    @IBOutlet var locationLabel: CustomLocationLabel! /*TEL-333*/
    @IBOutlet var userPost: CustomTextView! /*TEL-336*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-316*/
        initializeHideKeyboard() /*TEL-401*/
        
        userPost.text = Constants.newPostText /*TEL-337*/ /*TEL-436*/
        userPost.isUserInteractionEnabled = true /*TEL-346*/
        userPost.addDoneButton(title: Constants.doneButtonTitle, target: self, selector: #selector(tapDone(sender:))) /*TEL-358*/ /*TEL-436*/
        userPost.delegate = self
        userPost.autocapitalizationType = .sentences /*TEL-664*/
    }
    
    func textViewDidChange(_ textView: UITextView) { /*TEL-664*/
        guard let text = textView.text, !text.isEmpty else { return }
        let capitalizedText = text.prefix(1).uppercased() + text.dropFirst()
        textView.text = capitalizedText
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
    
    /*TEL-663*/
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Type here..." {
            textView.text = ""
        }
    }
    
    @IBAction func correctButtonTapped(_ sender: UIButton) { /*TEL-557*/
        if let currentPost = userPost.text, let locationLabel = locationLabel.text {
            if currentPost != "Type here..." {
                
                let nextObject = PostModel(location: "\(locationLabel)", likeCount: 0, text: "\(currentPost)", dislikeCount: 0) /*TEL-669*/
                let mySingleton = MyPostsDB.shared
                mySingleton.appendPost(nextObject)
                ShareFunctions().showAlert(vc: self, title: "Success", message: "Post added!", alertStyle: .alert, actionTitles: ["OK"], actionStyles: [.cancel]) /*TEL-671*/
                
            } else {
                print("nothing changed")
            }
        }
    }
    
    
    
}



