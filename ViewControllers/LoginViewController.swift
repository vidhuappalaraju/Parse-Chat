//
//  LoginViewController.swift
//  Parse Chat
//
//  Created by Vidhu Appalaraju on 9/28/18.
//  Copyright © 2018 Vidhu Appalaraju. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogIn(_ sender: Any) {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        if(usernameField.text!.isEmpty || passwordField.text!.isEmpty){
            let alertController = UIAlertController(title: "Username and Password Required", message: "Please enter a username and password", preferredStyle: .alert)
            let TryAgainAction = UIAlertAction(title: "Try Again", style: .default) { (action) in
                // handle response here.
            }
            alertController.addAction(TryAgainAction)
            self.present(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            return
        }
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
                print("User log in failed: \(error.localizedDescription)")
            } else {
                print("User logged in successfully")
                // display view controller that needs to shown after successful login
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let newUser = PFUser()
        
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        
        if(usernameField.text!.isEmpty || passwordField.text!.isEmpty){
             let alertController = UIAlertController(title: "Username and Password Required", message: "Please enter a username and password", preferredStyle: .alert)
            let TryAgainAction = UIAlertAction(title: "Try Again", style: .default) { (action) in
                // handle response here.
            }
            alertController.addAction(TryAgainAction)
            self.present(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            return
        }
        
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("User Registered successfully")
                // manually segue to logged in view
            }
        }
        
    }
    

}
