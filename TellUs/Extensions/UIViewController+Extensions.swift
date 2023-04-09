//
//  UIViewController+Extensions.swift
//  TellUs
//
//  Created by Harun Fazlic on 10. 2. 2023..
//

/*TEL-175*/
import UIKit


/*TEL-388*/
extension UIViewController { /*TEL-391*/
    
    
    func initializeHideKeyboard(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissMyKeyboard)) /*TEL-400*/
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissMyKeyboard(){
        view.endEditing(true)
    }
    
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
    
    /*TEL-219*/
    func isValidPassword(_ password: String) -> Bool {
        let passwordRexEx = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,}$"
        let passwordPred = NSPredicate(format: "SELF MATCHES %@", passwordRexEx)
        return passwordPred.evaluate(with: password)
    }
    
    /*TEL-230*/
    func isFirstLetterCapital(word: String) -> Bool{
        let wordRegEx = "[A-Z][a-z]{2,20}$"
        let wordPred = NSPredicate(format: "SELF MATCHES %@", wordRegEx)
        return wordPred.evaluate(with: word)
    }
    
    
}
