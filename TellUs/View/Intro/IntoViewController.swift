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
    @IBOutlet var swipeUp: UISwipeGestureRecognizer!
    
    var numOfPages = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        numOfPages += 1
        if numOfPages == 4 {
            dismiss(animated: true)
        } else {
            UIView.transition(with: stepsImages, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.stepsImages.image = UIImage(named: "img\(self.numOfPages)")
            }, completion: nil)
            
            pagesDots.currentPage = numOfPages-1
        }

    }
}
