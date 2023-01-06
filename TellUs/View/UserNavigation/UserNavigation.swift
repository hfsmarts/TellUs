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
    @IBOutlet var logOutButton: CustomButton! /*TEL-305*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundOrange") /*TEL-297*/
        newPostButton.backgroundColor = UIColor(named: "BackgroundBlue")
        myPostsButton.backgroundColor = UIColor(named: "BackgroundBlue")
        logOutButton.backgroundColor = UIColor(named: "BackgroundBlue")
    }
    
    @IBAction func newPostTapped(_ sender: UIButton) { /*TEL-321*/ /*TEL-323*/
        let newPostVC = NewPost()
        present(newPostVC, animated: true)
    }
    
    @IBAction func myPostsTapped(_ sender: UIButton) { /*TEL-322*/
        
    }
    
    
    
    
    
    @IBAction func logOutTapped(_ sender: UIButton) { /*TEL-310*/
        /*TEL-311*/
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
