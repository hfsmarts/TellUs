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
    @IBOutlet var dislikeCounter: UILabel! /*TEL-255*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.0) /*TEL-173*/

        successfulLoginPostText.text = "Idu dva balona ulicom i sretnu kaktussssssssssssssssssss"
        
        //Colors to be defined here
       // dislikeCounter.textColor = UIColor(named: K.AppColors.red)

    }
    
    override func viewDidLayoutSubviews() {
        successfulLoginPostText.centerVertically() /*TEL-228*/
    }
    
    
  /*TEL-237*/
    @IBAction func backButton(_ sender: UIButton) { /*TEL-239*/
        dismiss(animated: true, completion: nil) /*TEL-240*/
    }
}




