//
//  UserDataHandler.swift
//  user login
//
//  Created by Naman Jain on 15/04/21.
//

import UIKit
import CoreData

class UserDataHandler{
    static let shareInstance = UserDataHandler()
    
    func saveItems(context: NSManagedObjectContext){
        do {
            try context.save()
        }catch{
            print("there was an error while saving item.\(error)")
        }
    }
}
