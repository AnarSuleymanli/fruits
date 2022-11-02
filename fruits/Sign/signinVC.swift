//
//  Home.swift
//  Floewers
//
//  Created by Anar Suleymanli on 21.09.22.
//

import UIKit
import FirebaseAuth

class signinVC: UIViewController {

    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
    
    func setUpElements() {
        
        //Hide the error label
        errorLabel.alpha = 0
        
        //Style the Elements
        
        Utilities.styleTextField(emailtextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signInButton)
    }
    
    
        
    
        
    
    @IBAction func signInClicked(_ sender: Any) {
        
        // TODO: Validate Text Fields
        
        // Create cleaned versions of the text field
        let email = emailtextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Signing in the user
        
        Auth.auth().signIn(withEmail: email, password: password) {(authResult,error) in
            
            if error != nil {
                // Couldn't sign in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else {
                let viewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.HomeViewC) as? HomeViewC
                
                self.view.window?.rootViewController = viewController
                self.view.window?.makeKeyAndVisible()
            }
            }
        
        
    }
    
    
    
    
}
