//
//  AlertManager.swift
//  user login
//
//  Created by Naman Jain on 02/05/21.
//

import Foundation
import UIKit


struct AlertManager{
    
    private static func showBasicAlert(on vc:UIViewController, with title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
    static func showIncompleteFormAlert(on vc:UIViewController){
        showBasicAlert(on: vc, with: "incomplete Form", message: "Please fill the form completly")
    }
    
    static func showInvalidEmailAlert(on vc:UIViewController){
        showBasicAlert(on: vc, with: "invalid email", message: "Please check your email")
    }
    
    static func showUnableToRetrieveAlert(on vc:UIViewController){
        showBasicAlert(on: vc, with: "Unable to retrieve data", message: "Data not found! Please Try Again Later")
    }
    static func showIncorrectPassworAlert(on vc: UIViewController){
        showBasicAlert(on: vc, with: "Wrong UserName or Password", message: "Please check username and password carefully.")
    }
}
