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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: K.AppColors.blueBackground) /*TEL-316*/
        userPost.text = "Type here..."/*TEL-337*/
        userPost.isUserInteractionEnabled = true /*TEL-346*/

    }

    @IBAction func backButtonTapped(_ sender: UIButton) { /*TEL-327*/
        dismiss(animated: true, completion: nil) /*TEL-328*/
    }
    

}
