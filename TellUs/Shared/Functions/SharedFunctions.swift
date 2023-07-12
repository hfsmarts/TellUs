//
//  SharedFunctions.swift
//  TellUs
//
//  Created by Harun Fazlic on 11. 7. 2023..
//

import UIKit

/*TEL-670*/ /*TEL-671*/ /*TEL-672*/
class ShareFunctions {
    func showAlert(vc: UIViewController,
                   title: String,
                   message: String,
                   alertStyle: UIAlertController.Style,
                   actionTitles: [String],
                   actionStyles: [UIAlertAction.Style],
                   viewControllerToPresent: UIViewController?,
                   completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alertStyle)
        
        for (index, title) in actionTitles.enumerated() {
            let style = actionStyles[index]
            let action = UIAlertAction(title: title, style: style) { _ in
                completion?()
                
                if let viewController = viewControllerToPresent {
                    viewController.modalPresentationStyle = .fullScreen
                    vc.present(viewController, animated: true, completion: nil)
                }
            }
            alertController.addAction(action)
        }
        
        vc.present(alertController, animated: true, completion: nil)
    }
}
