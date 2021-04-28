//
//  MainViewController.swift
//  user login
//
//  Created by Naman Jain on 24/04/21.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var lbl: UILabel!
    var label:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = label
    }
    
    

}
