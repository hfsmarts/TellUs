//
//  SkipLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 4. 12. 2022..
//

import UIKit

class SkipLogin: UIViewController {
    
    @IBOutlet var skipLoginPostText: CustomTextView!
    @IBOutlet var backButton: BackButton! /*TEL-279*/ /*TEL-292*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: K.AppColors.blueBackground) /*TEL-271*/ /*TEL-140*/

        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews() /*TEL-242*/
        skipLoginPostText.centerVertically() /*TEL-163*/
    }
    
    
    /*TEL-277*/
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
