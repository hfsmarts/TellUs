//
//  SuccessfulLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 20. 12. 2022..
//

import UIKit

/*TEL-172*/
class SuccessfulLogin: UIViewController {

    @IBOutlet var successfulLoginPostText: CustomTextView! /*TEL-227*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.0) /*TEL-173*/

        successfulLoginPostText.text = "Idu dva balona ulicom i sretnu kaktussssssssssssssssssss"
    }
}
