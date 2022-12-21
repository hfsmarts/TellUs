//
//  File.swift
//  TellUs
//
//  Created by Harun Fazlic on 21. 12. 2022..
//

/*TEL-175*/

import UIKit

class UtilityFunction: NSObject {
    
    /*TEL-177*/
    func alertFunction(vc: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let doneWithAlert = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(doneWithAlert)
        vc.present(alert, animated: true, completion: nil)
    }
    
    /*TEL-181*/
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
   
   
    
    
    
    
}
