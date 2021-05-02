//
//  ViewController.swift
//  user login
//
//  Created by Naman Jain on 28/03/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    var userData = [User]()
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let request: NSFetchRequest<User> = User.fetchRequest()
        let predicate = NSPredicate(format: "userName CONTAINS %@", userNameTextField.text ?? "")
        request.predicate = predicate
        loadData(with: request)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMain"{
            let destinationVC = segue.destination as! MainViewController
            destinationVC.label = "success"
            
            
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if checkCredential(){
            return true
        }
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }

    func checkCredential()->Bool{
        for user in userData{
            if user.password == passwordTextField.text!{
                return true
            }
        }
        return false
    }
    
    func saveItems(){
        do{
            try context.save()
        }catch{
            print("error while saving data:\(error)")
        }
    }
    
    func loadData(with request: NSFetchRequest<User>){
        do{
            userData = try context.fetch(request)
        }catch{
            print("error while fetching data: \(error)")
        }
    }
    
}

