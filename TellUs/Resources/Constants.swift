//
//  Constants.swift
//  TellUs
//
//  Created by Harun Fazlic on 27. 12. 2022..
//

/*TEL-221*/
import UIKit

struct Constants { /*TEL-259*/ /*TEL-222*/
    static let emailString = "Email" /*TEL-405*/
    static let passwordString = "Password" /*TEL-409*/
    static let nameString = "Name" /*TEL-434*/
    static let surnameString = "Surname" /*TEL-434*/
    static let loginErrorTitle = "Error logging in" /*TEL-412*/
    static let loginErrorMessage = "Your email or password is incorrect." /*TEL-414*/
    static let passwordForgetMessage = "Please enter your email address" /*TEL-424*/
    static let passwordChangeMessage = "Please enter your password" /*TEL-437*/
    static let passwordForgetButtonTitle = "Submit"
    static let passwordForgetEmailSent = "Email sent"
    static let passwordForgetEmailSentMessage = "New password is send to your email."
    static let errorString = "Error"
    static let errorMessage = "Your data is incorrect."
    static let backButtonTitle = "back" /*TEL-429*/
    static let textViewDefaultText = "Consider one more time signing up to Tell Us!" /*TEL-431*/
    static let locationDefaultText = "Sarajevo" /*TEL-432*/
    static let titleLabel = "TELL US" /*TEL-433*/
    static let signUpTitle = "Sign Up" /*TEL-434*/
    static let signUpErrorTitle = "Error signing up" /*TEL-434*/
    static let signUpErrorMessage = "Something went wrong. \n Password must be at least 8 character long. Password should contain capital case letters and numbers as well!" /*TEL-434*/
    static let successfulLoginPostText = "Welcome to the TELL US..." /*TEL-435*/
    static let newPostText = "Type here..." /*TEL-436*/
    static let doneButtonTitle = "Done" /*TEL-436*/
    
    
    /*TEL-258*/
    struct AppColors{
        static let red = "AppRed" /*TEL-256*/
        static let green = "AppGreen" /*TEL-263*/
        static let blueBackground = "BackgroundBlue" /*TEL-267*/
        static let orangeBackground = "BackgroundOrange" /*TEL-273*/
    }
    
    /*TEL-422*/
    struct FontName{
        static let regularFont = "KleeOne-Regular"
        static let boldFont = "KleeOne-SemiBold"
    }
    
    /*TEL-475*/
    struct CollectionViewCell{
        static let successCellIdentifier = "SuccessCollectionViewCell" /*TEL-474*/ /*TEL-582*/
        static let skipCellIdentifier = "SkipCollectionViewCell" /*TEL-584*/
    }
    
    
}
