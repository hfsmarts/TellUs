//
//  SuccessfulLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 20. 12. 2022..
//

import UIKit

/*TEL-172*/
class SuccessfulLogin: UIViewController {
    
    @IBOutlet var backButton: BackButton! /*TEL-283*/
    @IBOutlet var locationLabel: UILabel! /*TEL-294*/
    @IBOutlet var successfulLoginPostText: CustomTextView! /*TEL-227*/
    @IBOutlet var dislikeCounter: UILabel! /*TEL-255*/
    @IBOutlet var likeCounter: UILabel! /*TEL-265*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: K.AppColors.blueBackground) /*TEL-173*/ /*TEL-268*/
        locationLabel.font = UIFont(name: "KleeOne-SemiBold", size: 25) /*TEL-295*/
        dislikeCounter.textColor = UIColor(named: K.AppColors.red) /*TEL-257*/
        likeCounter.textColor = UIColor(named: K.AppColors.green) /*TEL-264*/
        
        //Text below should be loaded from database
        successfulLoginPostText.text = "Three dots below are your navigation, yes lower right corner..."
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews() /*TEL-242*/
        successfulLoginPostText.centerVertically() /*TEL-228*/
    }
    
    /*TEL-237*/
    @IBAction func backButton(_ sender: UIButton) { /*TEL-239*/
        dismiss(animated: true, completion: nil) /*TEL-240*/
    }
    
    
    
    
}




