//
//  SettingsViewController.swift
//  fruits
//
//  Created by Anar Suleymanli on 12.10.22.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func logOutclicked(_ sender: Any) {
        do {
            try Auth.auth() .signOut()
            self.performSegue(withIdentifier: "toLogin", sender: nil)
            
        } catch {
            print("error")
        }
        
        
    }
    

}
