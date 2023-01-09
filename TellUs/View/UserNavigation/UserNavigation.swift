//
//  UserNavigation.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-296*/
class UserNavigation: UIViewController {
    @IBOutlet var newPostButton: CustomButton! /*TEL-303*/
    @IBOutlet var myPostsButton: CustomButton! /*TEL-304*/
    @IBOutlet var passwordChangeButton: CustomButton! /*TEL-349*/
    @IBOutlet var logOutButton: CustomButton! /*TEL-305*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: K.AppColors.orangeBackground) /*TEL-297*/
        newPostButton.backgroundColor = UIColor(named: K.AppColors.blueBackground)
        myPostsButton.backgroundColor = UIColor(named: K.AppColors.blueBackground)
        logOutButton.backgroundColor = UIColor(named:  K.AppColors.blueBackground)
    }
    
    @IBAction func newPostTapped(_ sender: UIButton) { /*TEL-321*/ /*TEL-323*/
        let newPostVC = NewPost()
        newPostVC.modalPresentationStyle = .fullScreen /*TEL-326*/
        present(newPostVC, animated: true)
    }
    
    @IBAction func myPostsTapped(_ sender: UIButton) { /*TEL-322*/ /*TEL-324*/
        let myPostsVC = MyPosts()
        present(myPostsVC, animated: true)
    }
    
    @IBAction func logOutTapped(_ sender: UIButton) { /*TEL-310*/
        /*TEL-311*/
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
