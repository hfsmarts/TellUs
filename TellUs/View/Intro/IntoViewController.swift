//
//  IntoViewController.swift
//  TellUs
//
//  Created by Harun Fazlic on 22. 5. 2023..
//

import UIKit

/*TEL-631*/
class IntoViewController: UIViewController {
    
    @IBOutlet var stepsImages: UIImageView!
    @IBOutlet var pagesDots: UIPageControl!
    var numOfPages = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        numOfPages += 1
        if numOfPages == 4 {
            dismiss(animated: true)
        } else {
            stepsImages.image = UIImage(named: "img\(numOfPages)")
            pagesDots.currentPage = numOfPages-1
        }
        

    }
    


}
