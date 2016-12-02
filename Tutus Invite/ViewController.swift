//
//  ViewController.swift
//  Tutus Invite
//
//  Created by Sebastian Guerrero on 11/21/16.
//  Copyright © 2016 Sebastian Guerrero. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FacebookCore

var mainUser = UserClient()


class ViewController: BaseViewController {
    
    var loginClient = LoginClient()
    
    @IBAction func data(_ sender: Any) {
        loginClient.fetchProfile()
        //loginClient.createNewUser()
        
        
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        loginClient.logOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if !loginClient.isLoggedIn(){
            print("is not logged in")
            let loginStoryboard = UIStoryboard(name: "Login", bundle: nil)
            let controller = loginStoryboard.instantiateViewController(withIdentifier: "LoginController") as UIViewController
            present(controller, animated: true, completion: nil)
        }
        addSlideMenuButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

