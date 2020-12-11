//
//  ViewController.swift
//  MessengerMe
//
//  Created by Mohamed Fadul on 12/9/20.
//  Copyright © 2020 MoApps. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            // if not it will swipe down
            nav.modalPresentationStyle = .fullScreen 
            
            
            present(nav, animated: false)
            
            
        }
    }
    

}

