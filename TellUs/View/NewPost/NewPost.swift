//
//  NewPost.swift
//  TellUs
//
//  Created by Harun Fazlic on 6. 1. 2023..
//

import UIKit

/*TEL-315*/
class NewPost: UIViewController {
    @IBOutlet var locationLabel: CustomLocationLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: K.AppColors.blueBackground) /*TEL-316*/

    }

    @IBAction func backButtonTapped(_ sender: UIButton) { /*TEL-327*/
        dismiss(animated: true, completion: nil) /*TEL-328*/
    }
    

}
