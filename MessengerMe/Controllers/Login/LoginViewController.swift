//
//  LoginViewController.swift
//  MessengerMe
//
//  Created by Mohamed Fadul on 12/10/20.
//  Copyright © 2020 MoApps. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))
    
        // Add Subviews
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.frame.size.width/3
        imageView.frame = CGRect(x: (view.frame.size.width-size)/2,
                                 y: 20,
                                 width: size,
                                 height: size)
        
    }
    
    
    @objc private func didTapRegister() {
        let vc = RegisterViewController()
        vc.title = "Create Account"
        navigationController?.pushViewController(vc , animated: true)
    }
    

    

}
