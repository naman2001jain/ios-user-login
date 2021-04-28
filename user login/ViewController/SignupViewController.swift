//
//  SignupViewController.swift
//  user login
//
//  Created by Naman Jain on 24/04/21.
//

import UIKit
import CoreData


class SignupViewController: UIViewController {
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var usersArray = [User]()
    
    @IBOutlet weak var firstNameTf: UITextField!
    
    @IBOutlet weak var lastNameTf: UITextField!
    @IBOutlet weak var userNameTf: UITextField!
    @IBOutlet weak var submitButtonOutlet: UIButton!
    @IBOutlet weak var passwordTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTf.isSecureTextEntry = true
        submitButtonOutlet.layer.cornerRadius = 10
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))//for printing the file path
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        let newUser = User(context: self.context)
        newUser.firstName = firstNameTf.text!
        newUser.lastName = lastNameTf.text!
        newUser.userName = userNameTf.text!
        newUser.password = passwordTf.text!
        
        self.usersArray.append(newUser)
        self.saveItems()
        navigationController?.popToRootViewController(animated: true)
    }
    
    func saveItems(){
        do{
            try context.save()
        }catch{
            print("error while saving data:\(error)")
        }
    }

}
