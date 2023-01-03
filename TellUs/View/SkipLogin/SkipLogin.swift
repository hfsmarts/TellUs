//
//  SkipLogin.swift
//  TellUs
//
//  Created by Harun Fazlic on 4. 12. 2022..
//

import UIKit

class SkipLogin: UIViewController {

    @IBOutlet var skipLoginPostText: CustomTextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.15, green: 0.53, blue: 0.90, alpha: 1.00) /*TEL-140*/

        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews() /*TEL-242*/

        skipLoginPostText.centerVertically() /*TEL-163*/
    }
    
}
