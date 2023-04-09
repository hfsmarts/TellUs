
//
//  MyPosts.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-313*//*TEL-246*/
class MyPosts: UIViewController {
    @IBOutlet var myPostText: CustomTextView! /*TEL-379*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.AppColors.blueBackground) /*TEL-317*/
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myPostText.centerVertically()/*TEL-380*/
        
    }
    
    
    
    
    @IBAction func backButton(_ sender: UIButton) { /*TEL-360*/
        dismiss(animated: true, completion: nil) /*TEL-362*/
    }
    
    
    
    
}
