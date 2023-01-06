//
//  UserNavigation.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-296*/
class UserNavigation: UIViewController {
    @IBOutlet var newPostButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BackgroundOrange") /*TEL-297*/
        newPostButton.backgroundColor = UIColor(named: "BackgroundBlue")
    }
    
    
    
}
