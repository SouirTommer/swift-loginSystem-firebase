//
//  AlertManager.swift
//  swift-loginSystem-firebase
//
//  Created by ST SE on 29/3/2023.
//


import Foundation
import UIKit
import SwiftUI

class AlertManager {
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}

extension AlertManager {
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Email", message: "Please enter a valid email.")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(
            on: vc, title: "Invalid Password", message: "Please enter a valid password.")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(
            on: vc, title: "Invalid Username", message: "Please enter a valid username.")
    }
    public static func showInvalidPhoneAlert(on vc: UIViewController) {
        self.showBasicAlert(
            on: vc, title: "Invalid phone", message: "Please enter a valid phone number (8 numbers).")
    }
}

extension AlertManager {
    
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Registration Error", message: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(
            on: vc, title: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}

extension AlertManager {
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Error Signing In", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(
            on: vc, title: "Unknown Error Signing In", message: "\(error.localizedDescription)")
    }
}

extension AlertManager {
    
    public static func showLogoutErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Log Out Error", message: "\(error.localizedDescription)")
    }
}


extension AlertManager {
    
    public static func showRegisteredAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Register successfully!", message: nil)
    }
}

extension AlertManager {
    
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Password Reset Sent", message: nil)
    }
    
    public static func showErrorSendingPasswordReset(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(
            on: vc, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

extension AlertManager {
    
    public static func showFetchingUserError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(
            on: vc, title: "Error Fetching User", message: "\(error.localizedDescription)")
    }
    
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Error Fetching User", message: nil)
    }
}
